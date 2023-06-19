import 'package:ecampus/Row4/Pageacess.dart';
import 'package:ecampus/Row4/post/createPost.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'Account.dart';
import 'Calander/calander.dart';
import 'LinkedAccount.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.034,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(AccountHome());
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  height: screensize.height * 0.034,
                  width: screensize.width * 0.074,
                  margin: EdgeInsets.only(left: screensize.width * 0.042),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffdbdcfe)),
                  child: Center(
                    child: Text(
                      'JD',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: Color(0xff15141F),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.2986,
              ),
              Text(
                'Home',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    //fontFamily: 'Satoshi-Variable',
                    color: Color(0xff15141F),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
              SizedBox(
                width: screensize.width * 0.23,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(CreatePost());
                },
                child: SvgPicture.asset('images/postbutton.svg'),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.0424,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                alignment: Alignment.topLeft,
                child: Text(
                  'Today',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: Color(0xff050C0E),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            elevation: 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: screensize.height * 0.0123,
                        bottom: screensize.height * 0.0073,
                      ),
                      child: Text(
                        '0',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xff050C0E),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 38),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: screensize.height * 0.0073, left: 8),
                      child: Text(
                        'Memebrs',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xff050C0E),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: screensize.height * 0.0123,
                          bottom: screensize.height * 0.0073,
                          left: screensize.width * 0.0373,
                          right: screensize.width * 0.248),
                      child: Text(
                        '£ 0.00',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xff050C0E),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 38),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: screensize.height * 0.0073,
                      ),
                      child: Text(
                        'Budget                    ',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xff050C0E),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: screensize.height * 0.0061,
          ),
          GestureDetector(
            onTap: () {},
            child: Card(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.2, color: splashcolor),
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
              elevation: 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.024,
                        right: screensize.width * 0.024,
                        top: screensize.height * 0.0227,
                        bottom: screensize.height * 0.0227),
                    child: SvgPicture.asset('images/events.svg'),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.024,
                        right: screensize.width * 0.024,
                        top: screensize.height * 0.0227,
                        bottom: screensize.height * 0.0227),
                    child: Text(
                      'Events',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: Color(0xff050C0E),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.007,
          ),
          GestureDetector(
            onTap: () {
              Get.to(Pageacess());
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
              elevation: 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: screensize.width * 0.030,
                      left: screensize.width * 0.0293,
                      top: screensize.height * 0.0344,
                      bottom: screensize.height * 0.0344,
                    ),
                    child: SvgPicture.asset('images/colorsafety.svg'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: screensize.width * 0.75,
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsets.only(top: screensize.height * 0.0135),
                        child: Text(
                          'Page access',
                          style: TextStyle(
                              //letterSpacing: 0.006,
                              //fontFamily: 'Satoshi-Variable',
                              color: Color(0xff050C0E),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                      ),
                      Container(
                        width: screensize.width * 0.75,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          bottom: screensize.height * 0.0135,
                        ),
                        child: Text(
                          'Invite people to help manage your page and control who can access it.',
                          style: TextStyle(
                              //letterSpacing: 0.006,
                              //fontFamily: 'Satoshi-Variable',
                              color: Color(0xff808C91),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.007,
          ),
          GestureDetector(
            onTap: () {
              Get.to(LinkedAccount());
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
              elevation: 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: screensize.width * 0.030,
                      left: screensize.width * 0.0293,
                      top: screensize.height * 0.0344,
                      bottom: screensize.height * 0.0344,
                    ),
                    child: SvgPicture.asset('images/linkcolor.svg'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: screensize.width * 0.75,
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsets.only(top: screensize.height * 0.0135),
                        child: Text(
                          'Linked accounts',
                          style: TextStyle(
                              //letterSpacing: 0.006,
                              //fontFamily: 'Satoshi-Variable',
                              color: Color(0xff050C0E),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                      ),
                      Container(
                        width: screensize.width * 0.75,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          bottom: screensize.height * 0.0135,
                        ),
                        child: Text(
                          'Engage with your community across WhatsApp, Instagram and Facebook',
                          style: TextStyle(
                              //letterSpacing: 0.006,
                              //fontFamily: 'Satoshi-Variable',
                              color: Color(0xff808C91),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.0424,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                alignment: Alignment.topLeft,
                child: Text(
                  'Report overview',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: Color(0xff050C0E),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.3766,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Edit',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        //fontFamily: 'Satoshi-Variable',
                        color: splashcolor,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 10),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
