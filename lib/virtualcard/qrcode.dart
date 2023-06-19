import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../color.dart';
import '../mainpage.dart';

///qrcode
class qrcode extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _qrcodestate();
}

class _qrcodestate extends State<qrcode> {
  bool ismyqrclicked = false;

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
                  Get.off(mainpage1());
                },
                child: Container(
                  margin: EdgeInsets.only(left: 16, top: 20),
                  child: Image.asset(
                      'images/mvc/sitting/WhatsApp Image 2022-12-19 at 3.46 1.png'),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  SizedBox(height: 14,),
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
                      // Container(
                      //   alignment: AlignmentDirectional.topStart,
                      //   margin: EdgeInsets.only(left: 6),
                      //   child: Text(
                      //     'Last updated 22/11/2022 at 1:42 AM',
                      //     style: TextStyle(
                      //         fontFamily: 'Satoshi-Medium',
                      //         color: Color(0xFF3E3E3E),
                      //         fontWeight: FontWeight.w700,
                      //         fontSize: 9),
                      //   ),
                      // ),
                    ],
                  )
                ],
              )
            ],
          ),
          Card(
              margin: EdgeInsets.only(left: 9, right: 9, top: 27),
              elevation: 0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Container(
                height: 440,
                width: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),

                ///Rectangle Copy qrcode.png
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 95,
                          height: 100,
                          margin: EdgeInsets.only(
                              left: 12, top: screensize.height * 0.027),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            'images/mvc/sitting/Rectangle Copy qrcode.png',
                            fit: BoxFit.cover,
                            //  width:100,
                            //  height:170,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 0, top: screensize.height * 0.017),
                              child: Text(
                                'Jane Doe                    ',
                                style: TextStyle(
                                    fontFamily: 'Satoshi-Medium',

                                    ///#9EA6BE
                                    color: Color(0xFF9EA6BE),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0, top: 1),
                              child: Text(
                                '133435353        ',
                                style: TextStyle(
                                    fontFamily: 'Satoshi-Variable',

                                    ///#131313
                                    color: Color(0xFF131313),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                          ],
                        )
                      ],
                    ),
                    
                    Divider(

                      thickness: 0.3,
                      color: filedcolor,
                      height: screensize.height*0.005,
                      indent: 10,
                     endIndent: 10,
                    ),

                    ismyqrclicked == false
                        ? //qr img
                        Container(
                            height: 154,
                            width: 154,
                            alignment: AlignmentDirectional.center,
                            margin: EdgeInsets.only(top: 55),
                            child: Center(

                                ///Scanner Card.png

                                child: Image.asset(
                                    'images/mvc/sitting/QR-Code.png')),
                          )
                        : Container(
                            height: 80,
                            width: 154,
                            alignment: AlignmentDirectional.center,
                            margin: EdgeInsets.only(top: 80),
                            child: Center(
                              ///Scanner Card.png

                              child: Image.asset(
                                  'images/mvc/sitting/Scanner Card.png'),
                            ),
                          ),

                    ///last card
                    SizedBox(
                      height: 29,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              ismyqrclicked = !ismyqrclicked;
                            });
                          },
                          child: Container(
                            alignment: AlignmentDirectional.center,
                            child: Center(
                              child: ismyqrclicked == false
                                  ? Image.asset('images/mvc/sitting/QR.png')
                                  : Image.asset('images/mvc/sitting/QR2.png'),
                            ),
                          ),
                        ),

                        ///second one
                        InkWell(
                          onTap: () {
                            setState(() {
                              ismyqrclicked = !ismyqrclicked;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            alignment: AlignmentDirectional.center,
                            child: Center(
                              child: ismyqrclicked == false
                                  ? Image.asset(
                                      'images/mvc/sitting/Bar code.png')
                                  : Image.asset(
                                      'images/mvc/sitting/Bar code2.png'),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
