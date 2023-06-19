import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:camera/camera.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

import 'verify331.dart';

class checkbackId extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return _secondcheckcameridstate();
  }
}

class _secondcheckcameridstate extends State<checkbackId> {
 

  bool isloaded = false;
  var imagePicker = ImagePicker();
  var url;
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
        controller = CameraController(cameras![0], ResolutionPreset.max);
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
  //CollectionReference users = FirebaseFirestore.instance.collection('user');
  uploadimage() async {
    var imagepicked = await imagePicker.getImage(source: ImageSource.camera);
    if (imagepicked != null) {
      File file = File(imagepicked.path);
      var showromindexnameimage = basename(imagepicked.path);

      ///uploading image on firestore

      ///end uploding
    }
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: screensize.height * 0.028),
          Container(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Take a picture of your Student ID',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
            ),
          ),
          SizedBox(height: screensize.height * 0.023),
          Container(
            margin: EdgeInsets.only(
                left: screensize.width * 0.06, right: screensize.width * 0.06),
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Position all 4 corners of the page clearly in the',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
            ),
          ),
          Container(
            alignment: AlignmentDirectional.center,
            margin: EdgeInsets.only(
                left: screensize.width * 0.1, right: screensize.width * 0.1),
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                ' frame and take a picture.',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
            ),
          ),

          SizedBox(
            height: screensize.height * 0.172,
          ),
         
            Container(
              height: screensize.height * 0.295,
              width: screensize.width * 0.89,
             margin: EdgeInsets.only(left: screensize.width * 0.08,right: screensize.width * 0.08),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border:Border.all(
                  width: 2,
                  color: filedcolor
                )
              ),
           
              child: controller == null?
                          Image.asset('images/backid.png'):
                                !controller!.value.isInitialized?
                                  Center(
                                    child: CircularProgressIndicator(),
                                  ):
                                  CameraPreview(
                                    controller!)
             
            ),
          
           SizedBox(height: 3,),
          Center(child:Text('Back of the ID',style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),)),
          SizedBox(
            height: screensize.height * 0.17,
          ),
          InkWell(
            onTap: () async {
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
              Duration(seconds: 10);
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Backid2(),
                  ));
            },
            child: Container(
              height: 80,
              width: 80,
              alignment: AlignmentDirectional.center,
              child: Image.asset('images/mvc/Record button.png'),
            ),
          ),
        ],
      ),
    );
  }
}
