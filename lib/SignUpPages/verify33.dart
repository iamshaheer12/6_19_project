///thirdcameracheckid.dart
import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

import '../../../color.dart';
import 'VerificationPending.dart';
import 'progress.dart';
import 'verify231.dart';

///lifecameraidentity
class thirdcameracheckid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _thirdcameracheckidsstate();
  }
}

class _thirdcameracheckidsstate extends State<thirdcameracheckid> {
  var docs = '';
  TextEditingController email = new TextEditingController();
  //_thirdcameracheckidsstate(
  //{required this.docs, required this.email, required this.url});
  bool isloaded = false;
  var imagePicker = ImagePicker();
  var url;
  // CollectionReference users = FirebaseFirestore.instance.collection('user');
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

          /// and take a picture.
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

          ///finyouraccount
          ///Selfie preview.png
          SizedBox(
            height: screensize.height * 0.172,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: screensize.height * 0.295,
              width: screensize.width * 0.89,
              alignment: AlignmentDirectional.center,
              child: url == null
                  ? Image.asset('images/mvc/Camera Preview.png')
                  : Image.network('${url.toString()}'),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.145,
          ),

          Container(
            margin: EdgeInsets.only(
              right: screensize.width * 0.042,
              left: screensize.width * 0.042,
            ),
            height: screensize.height * 0.059,
            width: screensize.width,
            decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                border: Border.all(
                  color: Color(0xFFD9D9D9),
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: ElevatedButton(
              onPressed: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => checkbackId(),
                    ));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(splashcolor),
                  elevation: MaterialStateProperty.all(3)),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Use this picture',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.019,
          ),

          Container(
            margin: EdgeInsets.only(
              right: screensize.width * 0.042,
              left: screensize.width * 0.042,
            ),
            height: screensize.height * 0.059,
            width: screensize.width,
            decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                border: Border.all(
                  color: Color(0xFFD9D9D9),
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: ElevatedButton(
              onPressed: () async {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffE7EAEB)),
                  elevation: MaterialStateProperty.all(3)),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Retake picture',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: filedcolor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
