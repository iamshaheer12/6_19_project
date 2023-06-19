
import 'package:ecampus/virtualcard/qrcode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../color.dart';

///virtualcard.dart
class virtualcard extends StatefulWidget {
  
  
  @override
  State<StatefulWidget> createState() {
    return _virtualcardstate();
  }
}

class _virtualcardstate extends State<virtualcard> {
 
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    //var crnuser=FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: Color(0xFFF9FAFA),
      body: ListView(
        children: [
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(
                left: screensize.width * 0.05, top: screensize.height * 0.072),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('images/mvc/coloredbackarrow.png')),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  ///qrcode
                  Get.off(qrcode());
                },
                child: Container(
                  margin: EdgeInsets.only(
                      left: screensize.width * 0.037,
                      top: screensize.height * 0.024),
                  child: Image.asset(
                      'images/mvc/sitting/WhatsApp Image 2022-12-19 at 3.46 1.png'),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.021,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 14,
                  ),
                  ///#131313
                  Container(
                    child: Text(
                      'University College Cork',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: Color(0xFF131313),
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                  Row(
                    ///EBFFF1
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        alignment: AlignmentDirectional.topStart,
                        width: 59,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xFFEBFFF1),
                        ),
                        child: Center(
                          child: Text(
                            'Online',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Variable',
                                color: Color(0xFF119C2B),
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: EdgeInsets.only(left: 6),
                        child: Text(
                          'Last updated 22/11/2022 at 1:42 AM',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: Color(0xFF3E3E3E),
                              fontWeight: FontWeight.w700,
                              fontSize: 9),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Card(
            margin: EdgeInsets.only(
                left: screensize.width * 0.024,
                right: screensize.width * 0.024,
                top: screensize.height * 0.033),
            elevation: 0,
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Container(
              height: screensize.height * 0.38,
              width: screensize.width * 0.954,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          // datalst[0]['MYPHOTO']==null?
                          Container(
                            height: screensize.height * 0.165,
                            width: screensize.width * 0.325,
                            alignment: AlignmentDirectional.topStart,
                            margin: EdgeInsets.only(left: 0, top: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),

                            ///Image.asset
                            ///${datalst[0]['MYPHOTO']}  ///images/mvc/sitting/Rectangle Copy 17.png
                            child: Image.asset(
                              'images/mvc/sitting/Rectangle Copy 17.png',
                              height: screensize.height * 0.165,
                              width: screensize.width * 0.33,
                            ),
                          ),
                          //      Container(
                          // height:107,
                          // width:134,
                          // alignment:AlignmentDirectional.topStart,
                          // margin:EdgeInsets.only(left:8,top:16),
                          // decoration:BoxDecoration(
                          // borderRadius:BorderRadius.circular(20),
                          // ),
                          // ///Image.asset
                          // ///${datalst[0]['MYPHOTO']}  ///images/mvc/sitting/Rectangle Copy 17.png
                          // child:Image.network('${datalst[0]['MYPHOTO']}',
                          //   height:107,
                          //   width:134,
                          // ),
                          // ),
                          Container(
                            height: 26,
                            width: 26,
                            alignment: AlignmentDirectional.topStart,
                            margin: EdgeInsets.only(
                                left: screensize.width * 0.24,
                                top: screensize.height * 0.145),
                            decoration: BoxDecoration(),
                            child: Image.asset(
                              'images/mvc/sitting/Banner.png',
                              height: 26,
                              width: 26,
                            ),
                          ),
                          Container(
                            //alignment:AlignmentDirectional.topStart,

                            margin: EdgeInsets.only(
                                top: screensize.height * 0.1711,
                                left: screensize.width * 0.12),

                            ///${datalst[0]['Legal first name']} ///Student ID
                            child: Text(
                              'Student ID',
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Medium',
                                  color: splashcolor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 8),
                            ),
                          ),
                        ],
                      ),

                      ///flags
                      Row(
                        // mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: screensize.width * 0.030,
                              top: screensize.height * 0.013,
                            ),
                            width: screensize.width * 0.105,
                            height: screensize.height * 0.03,
                            child: Image.asset(
                              'images/mvc/sitting/Spain.png',
                              width: screensize.width * 0.105,
                              height: screensize.height * 0.03,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: screensize.width * 0.019,
                              top: screensize.height * 0.013,
                            ),
                            width: screensize.width * 0.105,
                            height: screensize.height * 0.03,
                            child: Image.asset(
                              'images/mvc/sitting/Group.png',
                              width: screensize.width * 0.105,
                              height: screensize.height * 0.03,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 1.5,
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 0, top: 27),
                        child: Image.asset(
                          'images/mvc/sitting/backgroundLogo.png',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: screensize.width * 0.50,
                            right: 14,
                            top: screensize.height * 0.336,
                            bottom: 0),
                        child: Image.asset(
                          'images/mvc/sitting/lion.png',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4, top: 25),
                        child: Column(
                          children: [
                            SizedBox(height: 3,),
                            ///${datalst[0]['Legal first name']}  ///Jane
                            Row(
                              children: [
                                Text(
                                  'Legal first name',
                                  style: TextStyle(
                                     // fontFamily: 'Satoshi-Variable',
                                      color: event2colors,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Text(
                                  'First name                   ',
                                  style: TextStyle(
                                      //fontFamily: 'Satoshi-Variable',
                                      color: chatscolors2,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screensize.height * 0.009,
                            ),
                            Text(
                              'Legal Last name',
                              style: TextStyle(
                                  //fontFamily: 'Satoshi-Variable',
                                  color: event2colors,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Last name                   ',
                              style: TextStyle(
                                  //fontFamily: 'Satoshi-Variable',
                                  color: chatscolors2,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              height: screensize.height * 0.009,
                            ),

                            ///seond   ///${datalst[0]['MYPHONE']} ///090078601
                            Row(
                              children: [
                                Text(
                                  '090078601909',
                                  style: TextStyle(
                                     // fontFamily: 'Satoshi-Variable',
                                      color: event2colors,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Student number        ',
                                  style: TextStyle(
                                     // fontFamily: 'Satoshi-Variable',
                                      color: chatscolors2,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screensize.height * 0.009,
                            ),

                            ///third
                            ///${datalst[0]['Date of birth (DD/MM/YYYY)']} ///YYYY/MM/DD
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Date of birth     ',
                                  style: TextStyle(
                                      //fontFamily: 'Satoshi-Variable',
                                      color: event2colors,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Date of birth             ',
                                  style: TextStyle(
                                      //fontFamily: 'Satoshi-Variable',
                                      color: chatscolors2,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12, left: 9),
            child: Text(
              'Course details',
              style: TextStyle(
                  fontFamily: 'Satoshi-Variable',
                  color: facebooklikecolor,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
