import 'dart:io';

import 'package:path/path.dart';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import '../../../../color.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../color.dart';
import 'lifecameraidentity.dart';

class identityquickphoto extends StatefulWidget {
  // var docs='';
  // TextEditingController email=new TextEditingController();
  // identityquickphoto({required this.docs,required this.email});
  @override
  State<StatefulWidget> createState() {
    return _identityquickphotostate();
  }
}

class _identityquickphotostate extends State<identityquickphoto> {
  var docs = '';
  TextEditingController email = new TextEditingController();
  //_identityquickphotostate({required this.docs,required this.email});
  var imagePicker = ImagePicker();
  uploadimage() async {
    var imagepicked = await imagePicker.getImage(source: ImageSource.camera);
    if (imagepicked != null) {
      File file = File(imagepicked.path);
      var showromindexnameimage = basename(imagepicked.path);

      ///uploading image on firestore

      ///end uploding
    }
  }

  var url;
  void _showAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      //barrierColor:otbcolor ,
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('"DigiRoad" would like to Access the Camera'),
        content: const Text(
            'DigiRoad requires access to the camera to take photos of documents when requested.'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            /// This parameter indicates this action is the default,
            /// and turns the action's text to bold text.
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Don\'t Allow'),
          ),
          CupertinoDialogAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as deletion, and turns
            /// the action's text color to red.
            isDefaultAction: true,
            onPressed: () async {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => lifecameraidentity(),
                  ));
            },
            child: const Text(
              'Allow',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  //CollectionReference users = FirebaseFirestore.instance.collection('user');
  ///lifecameraidentity
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.019,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/offline.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screensize.height * 0.050,
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Verify your identity',
                    style: TextStyle(
                        // fontFamily: 'Satoshi-Variable',
                        color: filedcolor,
                        fontWeight: FontWeight.w600,
                        fontSize: 28),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    ' with a quick photo',
                    style: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: filedcolor,
                        fontWeight: FontWeight.w600,
                        fontSize: 28),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.048,
          ),
          //face.png
          Center(
            child: GestureDetector(
                onTap: () async {},
                child: Container(child: Image.asset('images/mvc/tani.png'))),
          ),
          SizedBox(
            height: screensize.height * 0.056,
          ),
          Container(
            width: screensize.width,
            //height: 94,
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            decoration: BoxDecoration(
                border: Border.all(color: otbcolor, width: 1),
                color: otbcolor,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                       width: screensize.width * 0.08,
                        margin: EdgeInsets.only(
                            left: screensize.width * 0.034,
                            top: screensize.height * 0.019),
                        child: Image.asset('images/mvc/stop.png')),
                    Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.061,
                          top: screensize.height * 0.019),
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'It won’t be your profile picture',
                          style: TextStyle(
                              // fontFamily: 'Satoshi-Variable',
                              color: filedcolor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    )
                  ],
                ),
                //SizedBox(height: screensize.height*0.019,),
                Row(
                  children: [
                    Container(
                      width: screensize.width * 0.08,
                        margin: EdgeInsets.only(
                            left: screensize.width * 0.034,
                            top: screensize.height * 0.019),
                        child: Icon(
                          CupertinoIcons.checkmark_shield,
                          color: filedcolor,
                          size: 30,
                        )),
                    Container(
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.061,
                        top: screensize.height * 0.019,
                      ),
                      child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Column(
                            children: [
                              Text(
                                'Your photo is secure and used for\nverification needs only ',
                                style: TextStyle(
                                    //fontFamily: 'Satoshi-Variable',
                                    color: filedcolor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                              // Text('verification needs only                     ',
                              //   style: TextStyle(
                              //      // fontFamily: 'Satoshi-Variable',
                              //       color: filedcolor,
                              //       fontWeight:FontWeight.w400,
                              //       fontSize: 14
                              //   ),
                              // ),
                            ],
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: screensize.height * 0.019,
                )
              ],
            ),
          ),
          SizedBox(
            height: screensize.height * 0.065,
          ),
          Container(
            margin: EdgeInsets.only(
              right: screensize.width * 0.042, left: screensize.width * 0.042,
              // ,top: 15,
              bottom: screensize.width * 0.042,
            ),
            height: screensize.height * 0.0591,
            width: screensize.width,
            decoration: BoxDecoration(
                color: splashcolor,
                border: Border.all(
                  color: splashcolor,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: ElevatedButton(
              onPressed: () async {
                _showAlertDialog(context);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(splashcolor),
                  elevation: MaterialStateProperty.all(3)),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
