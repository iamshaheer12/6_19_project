import 'package:ecampus/Row4/Member/addingmember.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../payment/payment.dart';

class Member extends StatefulWidget {
  const Member({super.key});

  @override
  State<Member> createState() => _MemberState();
}

class _MemberState extends State<Member> {
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
              SizedBox(
                width: screensize.width * 0.4,
              ),
              Text(
                'Members',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    //fontFamily: 'Satoshi-Variable',
                    color: Color(0xff15141F),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Addingmembers());
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  height: screensize.height * 0.034,
                  width: screensize.width * 0.074,
                  margin: EdgeInsets.only(left: screensize.width * 0.2746),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffdbdcfe)),
                  child: Center(
                      child: Icon(
                    Icons.add,
                    color: splashcolor,
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.30,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(Payment);
                  },
                  child: Container(
                    height: 82,
                    width: 82,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffF6F8FA)),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.person_fill,
                        color: Color(0xffA3ACBA),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Members',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: Color(0xff15141F),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Members that join will show up here.',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: splashgragy2,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
