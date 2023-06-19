import 'package:ecampus/Row4/Home.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'Homemain.dart';

class updatePageinfo extends StatefulWidget {
  @override
  State<updatePageinfo> createState() => _updatePageinfoState();
}

class _updatePageinfoState extends State<updatePageinfo> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.029,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: screensize.width * 0.042),
                  child: Icon(
                    Icons.arrow_back,
                    color: splashcolor,
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.16,
              ),
              Center(
                child: Container(
                  ///  margin: EdgeInsets.only(left: screensize.width*0.042),

                  alignment: Alignment.topCenter,
                  child: Text(
                    'Update Page Info',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        //fontFamily: 'Satoshi-Variable',
                        color: filedcolor,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.16,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(mainpage2());
                },
                child: Container(
                  //       margin: EdgeInsets.only(left: screensize.width*0.042),

                  alignment: Alignment.topRight,
                  child: Text(
                    'Update',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        //fontFamily: 'Satoshi-Variable',
                        color: splashcolor,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.020,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                alignment: Alignment.topLeft,
                child: Text(
                  'About',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: filedcolor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 28),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.012,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
              elevation: 0.5,
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.037,
                          top: screensize.height * 0.009),
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.037,
                          bottom: screensize.height * 0.009,
                          top: screensize.height * 0.006),
                      child: Text(
                        'Club/Society name',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: filedcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: screensize.height * 0.029,
          ),
          //eff0f0,cccccc
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: Color(0xffeff0f0),
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            child: Stack(
              children: [
                SizedBox(
                  height: screensize.height * 0.11,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: screensize.height * 0.14,
                  ),
                  child: Divider(
                    thickness: 2,
                    color: Color(0xffcccccc),
                  ),
                ),
                Container(
                  height: 86,
                  width: 86,
                  margin: EdgeInsets.only(
                      top: screensize.height * 0.092,
                      left: screensize.width * 0.085,
                      bottom: screensize.height * 0.008),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffcccccc),
                      border: Border.all(color: Colors.white, width: 1.5)),
                ),
                Container(
                  height: 30,
                  width: 30,
                  margin: EdgeInsets.only(
                      top: screensize.height * 0.162,
                      left: screensize.width * 0.24),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: splashcolor,
                      border: Border.all(color: Colors.white, width: 1.5)),
                  child: Center(
                    child: SvgPicture.asset('images/camera.svg'),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  margin: EdgeInsets.only(
                      top: screensize.height * 0.096,
                      left: screensize.width * 0.826),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: splashcolor,
                      border: Border.all(color: Colors.white, width: 1.5)),
                  child: Center(
                    child: SvgPicture.asset('images/camera.svg'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screensize.height * 0.0184,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
              elevation: 0.5,
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.037,
                          top: screensize.height * 0.009),
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.037,
                          bottom: screensize.height * 0.009,
                          top: screensize.height * 0.006),
                      child: Text(
                        'https://www.ucc.ie',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: filedcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: screensize.height * 0.0135,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
              elevation: 0.5,
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.037,
                          top: screensize.height * 0.009),
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.037,
                          right: screensize.width * 0.290,
                          bottom: screensize.height * 0.009,
                          top: screensize.height * 0.006),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: filedcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: screensize.height * 0.018,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                alignment: Alignment.topLeft,
                child: Text(
                  'Contact',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: filedcolor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 28),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.012,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
              elevation: 0.5,
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.037,
                          top: screensize.height * 0.009),
                      child: Text(
                        'Email',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.037,
                          bottom: screensize.height * 0.009,
                          top: screensize.height * 0.006),
                      child: Text(
                        'info@uccsocieties.ie',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: filedcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
