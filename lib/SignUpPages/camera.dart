import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
class Camera extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Camera> {

  List<CameraDescription>? cameras; //list out the camera available
  CameraController? controller; //controller for camera
  XFile? image; //for caputred image

  @override
  void initState() {
    loadCamera();
    super.initState();
  }

  loadCamera() async {
      cameras = await availableCameras();
      if(cameras != null){
        controller = CameraController(
          
          cameras![3], ResolutionPreset.max);
                    //cameras[0] = first camera, change to 1 to another camera
                    
        controller!.initialize().then((_) {
            if (!mounted) {
              return;
            }
            setState(() {});
        });
      }else{
        print("NO any camera found");
      }
  }

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
          appBar: AppBar( 
              title: Text("Live Camera Preview"),
              backgroundColor: Colors.redAccent,
          ),
          body: Container( 
            child: Column(
              children:[
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 20),
                      height:300,
                      width:300,
                      decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 1)),
                      child: controller == null?
                          Center(child:Text("Loading Camera...")):
                                !controller!.value.isInitialized?
                                  Center(
                                    child: CircularProgressIndicator(),
                                  ):
                                  CameraPreview(
                                    
                                    controller!)
                  ),



                  Container( //show captured image
                     padding: EdgeInsets.all(30),
                     child: image == null?
                           Text("No image captured"):
                           Image.file(File(image!.path), height: 300,), 
                           //display captured image
                  )
              ]
            )
          ),

          floatingActionButton: FloatingActionButton(
            onPressed: () async{
                try {
                  if(controller != null){ //check if contrller is not null
                      if(controller!.value.isInitialized){ //check if controller is initialized
                          image = await controller!.takePicture(); //capture image
                          setState(() {
                             //update UI
                          });
                      }
                  }
                } catch (e) {
                     print(e); //show error
                }
            },
            child: Icon(Icons.camera),
          ),
           
       );
  }
}