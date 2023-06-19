import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../color.dart';
import 'package:intl/intl.dart';
import 'identityquickphoto.dart';

class verifyyouridentity extends StatefulWidget {
 
  @override
  State<StatefulWidget> createState() {
    return _verifyyouridentitysate();
  }
}

class _verifyyouridentitysate extends State<verifyyouridentity> {
  String mytime = DateFormat('dd-MM-yyyy').format(DateTime.now());
  TextEditingController email = new TextEditingController();
  TextEditingController fname = new TextEditingController();
  TextEditingController lname = new TextEditingController();
  TextEditingController dateofbirth = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var docs = '';
  bool isdatepicked = false;
  pickerdata() async {
    await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1950),
      lastDate: DateTime(2004),
    ).then((value) {
      setState(() {
  
        isdatepicked = true;
      });
    });
  }

 // _verifyyouridentitysate({required this.email, required this.docs});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body:
           
            SingleChildScrollView(
      child: Column(
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
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.057,
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(
              left: screenWidth * 0.05,
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
              right: screenWidth * 0.042,
            ),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'Tell us about yourself',
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
            height: screenHeight * 0.009,
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: screenWidth * 0.042,
                  right: screenWidth * 0.042,
                ),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'We need this information to verify your identity.',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: seconpagecolors,
                          fontStyle: FontStyle.normal,
                       fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: screenHeight * 0.019,
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    //height: screenHeight * 0.068,
                    margin: EdgeInsets.only(
                      right: screenWidth * 0.042,
                      left: screenWidth * 0.042,
                    ),
                    width: screenWidth * 0.91,
                    child: TextFormField(
                      controller: fname,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Legal first name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                         labelText: ' Legal first name',
                      labelStyle:TextStyle(
                          //fontFamily: 'Satoshi-Variable',
                          color: splashcolor,
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ) ,
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
                          hintText: '     Legal first name',
                          contentPadding: EdgeInsets.only(left: 8),
                          hintStyle: TextStyle(
                           // fontFamily: 'Satoshi-Medium',
                            color: Colors.black,
                              fontStyle: FontStyle.normal,
                            //fontWeight: FontWeight.w400,
                            fontSize: 13,
                          )),
                          
                    ),
                  ),

                  ///second fieled
                  SizedBox(
                    height: screenHeight * 0.019,
                  ),
                  Container(
                    //height: screenHeight * 0.068,
                    margin: EdgeInsets.only(
                      right: screenWidth * 0.042,
                      left: screenWidth * 0.042,
                    ),
                    width: screenWidth * 0.91,
                   
                    child: TextFormField(
                      controller: lname,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Legal last name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: ' Legal Last name',
                      labelStyle:TextStyle(
                          //fontFamily: 'Satoshi-Variable',
                          color: splashcolor,
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ) ,
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
                          hintText: '     Legal last name',
                          contentPadding: EdgeInsets.only(left: 8),
                          hintStyle: TextStyle(
                           // fontFamily: 'Satoshi-Medium',
                            color: Colors.black,
                              fontStyle: FontStyle.normal,
                          //  fontWeight: FontWeight.w400,
                            fontSize: 13,
                          )),
                    ),
                  ),

                  ///third fieled
                  SizedBox(
                    height: screenHeight * 0.019,
                  ),
                  Container(
                   // height: screenHeight * 0.068,
                    margin: EdgeInsets.only(
                      right: screenWidth * 0.042,
                      left: screenWidth * 0.042,
                    ),
                    width: screenWidth * 0.91,
                 
                    child: TextFormField(
                      onTap: () async {
                        pickerdata();
                        setState(() {
                          isdatepicked = true;
                        });
                      },
                      controller: dateofbirth,
                      decoration: InputDecoration(
                           labelText: ' Date of birth',
                      labelStyle:TextStyle(
                          //fontFamily: 'Satoshi-Variable',
                          color: splashcolor,
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ) ,
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
                        contentPadding: EdgeInsets.only(left: 8),
                          hintText: isdatepicked == true
                              ? '${mytime}'
                              : '     Date of birth (DD/MM/YYYY)',
                          hintStyle: TextStyle(
                              fontStyle: FontStyle.normal,
                            //fontFamily: 'Satoshi-Medium',
                            color: Colors.black,
                           // fontWeight: FontWeight.w400,
                            fontSize: 13,
                          )),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: screenHeight * 0.019,
          ),
          Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(
                    left:   screenWidth * 0.042,
                  ),
                  child: Icon(Icons.info_outline,color: filedcolor,size: 20,)
                  //Image.asset('images/infologo.png')
                  ),
              Container(
                margin: EdgeInsets.only(left: 34,right:  screenWidth * 0.042),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    ' Use your official name used with your university to match your university ID card',
                    style: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: filedcolor,
                          fontStyle: FontStyle.normal,
                       fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: screenHeight * 0.36,
          ),
          Container(
            margin: EdgeInsets.only(
                right: screenWidth * 0.042,
                left: screenWidth * 0.042,
                //top: 15,
                bottom: screenHeight * 0.06),
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
                  Navigator.push(context,MaterialPageRoute(builder:
                        (context) => identityquickphoto(),));
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
      ),
    )
        // })
        );
  }
  
}
