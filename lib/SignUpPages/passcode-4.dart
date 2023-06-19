import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import '../../../color.dart';
import 'More_info.dart';

class createpasscod extends StatefulWidget {
  TextEditingController email = new TextEditingController();
  createpasscod({required this.email});
  @override
  State<StatefulWidget> createState() {
    return _createpasscodstate(email: this.email);
  }
}

class _createpasscodstate extends State<createpasscod> {
  TextEditingController myController1 = TextEditingController();
  TextEditingController myController2 = TextEditingController();
  TextEditingController myController3 = TextEditingController();
  TextEditingController myController4 = TextEditingController();
  TextEditingController email = new TextEditingController();
  var docs = '';
  var passcode = '';
  final _formKey = GlobalKey<FormState>();
  bool isfinied = false;
  _createpasscodstate({required this.email});

  var imagePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(body: 
    // LayoutBuilder(builder: (context, contraints) {
    //   final screenWidth = contraints.maxWidth;
    //   final screenHeight = contraints.maxHeight;
    //   return 
      ListView(
        children:[ Column(
          children: [
          SizedBox(
                height: screenHeight * 0.013,
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
                    child: Image.asset('images/mvc/offline.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    child: Image.asset('images/mvc/offline.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    child: Image.asset('images/mvc/offline.png'),
                  ),
                ],
              ),
            ),
          SizedBox(
                height: screenHeight * 0.057,
              ),
            Container(
              alignment: AlignmentDirectional.topStart,
                margin: EdgeInsets.only(
                  left: screenWidth* 0.05,
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
            Container(
              margin: EdgeInsets.only(
                  left: screenWidth * 0.042,
                  right: screenWidth * 0.042),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  'Create passcode',
                  style: TextStyle(
                      //fontFamily: 'Satoshi-Variable',
                      color: filedcolor,
                        fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 26),
                ),
              ),
            ),
           SizedBox(
                height: screenHeight * 0.011,
              ),
            Stack(
              children: [
                Container(
                  height: screenHeight*0.048,
                  width: screenWidth*0.91,
                  margin: EdgeInsets.only(
                      left: screenWidth * 0.042,
                      right:screenWidth * 0.042,),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Create a passcode for your eCampus account.',
                      style: TextStyle(
                          //fontFamily: 'Satoshi-Medium',
                          color: seconpagecolors,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight *0.036,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Form(
                key: _formKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: screenWidth*0.23),
                        child: Container(
                           width: screenWidth* 0.1066,
                        height: screenHeight* 0.068,
                          decoration: BoxDecoration(
                              color: otbcolor,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            controller: myController1,
                            maxLines: 1,
                            onChanged: (_) =>
                                FocusScope.of(context).nextFocus(),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                            ],
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.phone,
                            textAlign: TextAlign.center,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'pass';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              label: Center(
                                //margin: EdgeInsets.only(left: 30,bottom: 20),
                                child: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(
                                      '',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color: Colors.black,
                                        fontSize: 36,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.only(left: screenWidth*0.034),
                        child: Container(
                          width: screenWidth* 0.1066,
                        height: screenHeight* 0.068,
                          decoration: BoxDecoration(
                              color: otbcolor,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            controller: myController2,
                            maxLines: 1,
                            onChanged: (_) =>
                                FocusScope.of(context).nextFocus(),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                            ],
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            textAlign: TextAlign.center,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'pass';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              label: Center(
                                child: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(
                                      '',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color: Colors.black,
                                        fontSize: 36,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.only(left: screenWidth*0.034),
                        child: Container(
                           width: screenWidth* 0.1066,
                        height: screenHeight* 0.068,
                          decoration: BoxDecoration(
                              color: otbcolor,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            controller: myController3,
                            maxLines: 1,
                            onChanged: (_) =>
                                FocusScope.of(context).nextFocus(),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                            ],
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            textAlign: TextAlign.center,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'pass';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              label: Center(
                                //margin: EdgeInsets.only(left: 30,bottom: 20),
                                child: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(
                                      '',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color: Colors.black,
                                        fontSize: 36,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                    //Line 7.png
                    Container(
                      margin: EdgeInsets.only(left: screenWidth*0.034),
                      child: Container(
                       width: screenWidth* 0.1066,
                        height: screenHeight* 0.068,
                        decoration: BoxDecoration(
                            color: otbcolor,
                            borderRadius: BorderRadius.circular(10)),
                        //margin: EdgeInsets.only(left: 15,right: 15)
                        child: TextFormField(
                          controller: myController4,
                          maxLines: 1,
                          onChanged: (_) => FocusScope.of(context).nextFocus(),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                          ],
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.center,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'pass';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            label: Center(
                              child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    '',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color: Colors.black,
                                      fontSize: 36,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.019,
            ),
            Container(
              margin: EdgeInsets.only(
                right: screenWidth * 0.08,
              ),
              child: Column(
                children: [
                  Center(
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        '       By entering the passcode, you agree to our',
                        style: TextStyle(
                            //fontFamily: 'Satoshi-Variable',
                            color: filedcolor,
                              fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(left: 55),
                  //   child: 
                    Center(
                      child: 
                      // Row(
                      //   children: [
                      //     // Container(
                          //   margin: EdgeInsets.only(left: 55),
                          //   child: Align(
                          //     alignment: AlignmentDirectional.center,
                          //     child: Text(
                          //       'our',
                          //       style: TextStyle(
                          //           //fontFamily: 'Satoshi-Variable',
                          //           color: filedcolor,
                          //             fontStyle: FontStyle.normal,
                          //         fontWeight: FontWeight.w700,
                          //           fontSize: 13),
                          //     ),
                          //   ),
                          // ),
                           Container(
                            //margin: EdgeInsets.only(left: 90),
                            child: Align(
                              alignment: AlignmentDirectional.center,
                              child: Text(
                                '               Terms & Conditions',
                                style: TextStyle(
                                    //fontFamily: 'Satoshi-Variable',
                                    color: splashcolor,
                                      fontStyle: FontStyle.normal,
                                   fontWeight: FontWeight.w700,
                                    fontSize: 13),
                              ),
                            ),
                          ),
                      //   ],
                      // ),
                    //),
                  )
                ],
              ),
            ),

            ///second otp
            SizedBox(
              height: screenHeight * 0.44,
            ),
            Container(
              margin: EdgeInsets.only(
                      right: screenWidth * 0.042,
                      left:screenWidth * 0.042,
                      //top: 15,
                      bottom: screenHeight* 0.06),
                  height: screenHeight*0.059,
                  width: screenWidth*0.91,
              decoration: BoxDecoration(
                  color: splashcolor,
                  border: Border.all(
                    color: splashcolor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      print('==================passcode=====-----');
                      print('==================passcode=====-----');
                      passcode =
                          '${myController1.text}${myController2.text}${myController3.text}${myController4.text}';
                      print('passcode=====$passcode}-----');
                      print('==================passcode=====-----');
                      print('==================passcode=====-----');
                    });
                    () async {
                      setState(() {
                        isfinied = true;
                      });
                      isfinied == true
                          ? await CircularProgressIndicator()
                          : AwesomeDialog(
                              context: context,
                              dialogType: DialogType.info,
                              borderSide: const BorderSide(
                                color: Colors.green,
                                width: 2,
                              ),
                              width: 280,
                              buttonsBorderRadius: const BorderRadius.all(
                                Radius.circular(2),
                              ),
                              dismissOnTouchOutside: true,
                              dismissOnBackKeyPress: false,
                              onDismissCallback: (type) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(''),
                                  ),
                                );
                              },
                              headerAnimationLoop: false,
                              animType: AnimType.bottomSlide,
                              title: 'Wrong',
                              desc: 'Please verify your University ID',
                              showCloseIcon: true,
                              btnCancelOnPress: () {},
                              btnOkOnPress: () {},
                            ).show();
                    };

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              verifyyouridentity(),
                        ));
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
        ),]
      )
   // })
    );
  }
}
