import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//universitycollegeemail.dart
import 'package:get/get.dart';

import 'ClubCategory.dart';

class ClubName extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ClubName();
  }
}

class _ClubName extends State<ClubName> {
  var txt = '';
  final _formKey = GlobalKey<FormState>();

  TextEditingController email = new TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body:
          // LayoutBuilder(
          //   builder: (context, contraints) {
          //     final screenWidth = contraints.maxWidth;
          //     final screenHeight = contraints.maxHeight;
          //  return
          ListView(
          children: [
            SizedBox(
              height: screenHeight * 0.029,
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(
                left: screenWidth * 0.044,
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('images/mvc/coloredbackarrow.png')),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Column(
              children: [
                Container(
                  width: screenWidth * 0.95,
                  //height: screenHeight*0.044,
                  margin: EdgeInsets.only(
                      left: screenWidth * 0.042, right: screenWidth * 0.042),
                  child: Text(
                    'What’s the name of your',
                    style: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: filedcolor,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 26),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: screenWidth * 0.042, right: screenWidth * 0.042),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Society',
                      style: TextStyle(
                          // fontFamily: 'Satoshi-Variable',
                          color: filedcolor,
                          fontWeight: FontWeight.w700,
                          fontSize: 26),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.011,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: screenWidth * 0.042, right: screenWidth * 0.042),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Use the official name of your club/society that\n helps explain what you do.',
                      style: TextStyle(
                          //fontFamily: 'Satoshi-Medium',
                          color: filedcolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.009,
            ),
            Container(
              //height: 60,
              // height: screenHeight*0.10,
              width: screenWidth * 0.91,
              margin: EdgeInsets.only(
                right: screenWidth * 0.042,
                left: screenWidth * 0.042,
              ),

              child: Form(
                key: _formKey,
                child: TextFormField(
                  //textAlign: TextAlign.left,
                  controller: email,
                  decoration: InputDecoration(
                      labelText: 'Society name',
                      labelStyle: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: splashcolor,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                      // errorText: '',

                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          width: 2,
                          color: splashcolor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.1)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.1)),
                      contentPadding: EdgeInsets.only(
                        left: 8,
                      ),
                      hintText: '   Society name',
                      hintStyle: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: adidaslogocfdolors,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Field Society name must be provided';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.55,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                    right: screenWidth * 0.042,
                    left: screenWidth * 0.042,
                    //top: 15,
                   ),
                height: screenHeight * 0.059,
                width: screenWidth * 0.91,
                decoration: BoxDecoration(
                    color: splashcolor,
                    border: Border.all(
                      color: splashcolor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Get.to(ClubCategory());
                    }
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
                            fontFamily: 'Satoshi-Variable',
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      
      //   },
      // )
      // Container(
      //   height: screensize.height,
      //   width: screensize.width,
      //   child:

      //   ),
    );
  }
}
