import 'package:ecampus/Row4/studentUnion/Email.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'Club/Email.dart';
import 'Society/Email.dart';

class Selectstructure extends StatefulWidget {
  const Selectstructure({super.key});

  @override
  State<Selectstructure> createState() => _SelectstructureState();
}

class _SelectstructureState extends State<Selectstructure> {
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
          ],
        ),
        SizedBox(
          height: screensize.height * 0.033,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              alignment: Alignment.topLeft,
              child: Text(
                'Select your structure?',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    //fontFamily: 'Satoshi-Variable',
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 28),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screensize.height * 0.025,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: screensize.width * 0.042,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Select your structure for verification purposes.',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    fontFamily: 'Satoshi-Variable',
                    color: Color(0xff576B74),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screensize.height * 0.018,
        ),
        GestureDetector(
          onTap: () {
            Get.to(Clubemail());
          },
          child: Card(
            margin: EdgeInsets.only(
                left: screensize.width * 0.042,
                right: screensize.width * 0.042),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: screensize.width * 0.40,
                  margin: EdgeInsets.only(
                      left: screensize.width * 0.021,
                      top: screensize.height * 0.033,
                      bottom: screensize.height * 0.033),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Club',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        fontFamily: 'Satoshi-Variable',
                        color: Color(0xff0C212C),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: screensize.width * 0.40,
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: screensize.height * 0.033,
                        bottom: screensize.height * 0.033),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: splashcolor,
                    )),
              ],
            ),
          ),
        ),
        SizedBox(
          height: screensize.height * 0.009,
        ),
        GestureDetector(
          onTap: () {
            Get.to(Societyemail());
          },
          child: Card(
            margin: EdgeInsets.only(
                left: screensize.width * 0.042,
                right: screensize.width * 0.042),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: screensize.width * 0.40,
                  margin: EdgeInsets.only(
                      left: screensize.width * 0.021,
                      top: screensize.height * 0.033,
                      bottom: screensize.height * 0.033),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Society',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        fontFamily: 'Satoshi-Variable',
                        color: Color(0xff0C212C),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: screensize.width * 0.40,
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: screensize.height * 0.033,
                        bottom: screensize.height * 0.033),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: splashcolor,
                    )),
              ],
            ),
          ),
        ),
        SizedBox(
          height: screensize.height * 0.009,
        ),
        GestureDetector(
          onTap: () {
            Get.to(Unionemail());
          },
          child: Card(
            margin: EdgeInsets.only(
                left: screensize.width * 0.042,
                right: screensize.width * 0.042),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: screensize.width * 0.40,
                  margin: EdgeInsets.only(
                      left: screensize.width * 0.021,
                      top: screensize.height * 0.033,
                      bottom: screensize.height * 0.033),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Student union',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        fontFamily: 'Satoshi-Variable',
                        color: Color(0xff0C212C),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: screensize.width * 0.40,
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: screensize.height * 0.033,
                        bottom: screensize.height * 0.033),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: splashcolor,
                    )),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
