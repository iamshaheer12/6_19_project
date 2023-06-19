import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ecampus/SignUpPages/selectandupload.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

import 'package:camera/camera.dart';

import '../../../color.dart';

///lifecameraidentity
class lifecameraidentity extends StatefulWidget {
  // var docs = '';
  // TextEditingController email = new TextEditingController();
  // lifecameraidentity({required this.docs, required this.email});
  @override
  State<StatefulWidget> createState() {
    return _lifecameraidentitystate();
  }
}

class _lifecameraidentitystate extends State<lifecameraidentity> {
  var docs = '';
  TextEditingController email = new TextEditingController();
  //_lifecameraidentitystate({required this.docs, required this.email});
  bool isloaded = false;
  var imagePicker = ImagePicker();
  List<CameraDescription>? cameras; //list out the camera available
  CameraController? controller; //controller for camera
  XFile? image; //for caputred image

  @override
  void initState() {
    //loadCamera();
    super.initState();
   // uploadimage();
  }

  // loadCamera() async {
  //   cameras = await availableCameras();
  //   if (cameras != null) {
  //     controller = CameraController(cameras![1], ResolutionPreset.max);
  //     //cameras[0] = first camera, change to 1 to another camera

  //     controller!.initialize().then((_) {
  //       if (!mounted) {
  //         return;
  //       }
  //       setState(() {});
  //     });
  //   } else {
  //     print("NO any camera found");
  //   }
  // }

  var url;
  //CollectionReference users = FirebaseFirestore.instance.collection('user');
  uploadimage() async {
    var image =
        await imagePicker.getImage(source: ImageSource.camera);
    if (image != null) {
      var showromindexnameimage = basename(image.path);

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
          SizedBox(
            height: screensize.height * 0.028,
          ),
          Container(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Verify your identity',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.023,
          ),
          Container(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Position your face in the oval below',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
            ),
          ),

          ///Selfie preview.png
          SizedBox(
            height: screensize.height * 0.183,
          ),

          Center(
            child: Container(
              height: 296,
              width: 287,

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: image == null
                      ? AssetImage('images/mvc/Selfie preview.png')
                      : Image.file(File(image!.path)) as ImageProvider,
                ),

                // border: Border.all(width: 1,color: filedcolor),
                shape: BoxShape.circle,
              ),

              //             Image.asset('images/mvc/Selfie preview.png')

              // CameraPreview(
              //   controller!)
            ),
          ),
          SizedBox(
            height: screensize.height * 0.16,
          ),
          InkWell(
            onTap: () async {
              uploadimage();
               Duration(seconds: 10);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => selectandupload(),
                          ));
              // try {
              //   if (controller != null) {
              //     //check if contrller is not null
              //     if (controller!.value.isInitialized) {
              //       //check if controller is initialized
              //       image = await controller!.takePicture()
              //           as XFile?; //capture image
              //       setState(() {
              //         Duration(seconds: 10);
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => selectandupload(),
              //             ));
              //         //update UI
              //       });
              //     }
              //   }
              // } catch (e) {
              //   print(e); //show error
              // }
            },
            child: Container(
              height: 80,
              width: 80,
              alignment: AlignmentDirectional.center,
              child: Image.asset('images/mvc/Record button.png'),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.049,
          )
        ],
      ),
    );
  }
}
