import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../Product/Product.dart';

class Payment extends StatefulWidget {
  @override
  State<Payment> createState() => _MemberState();
}

class _MemberState extends State<Payment> {
  int topbarselection = 1;
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
                width: screensize.width * 0.37,
              ),
              Text(
                'Payments',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    //fontFamily: 'Satoshi-Variable',
                    color: Color(0xff15141F),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
              GestureDetector(
                onTap: () {},
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
            height: screensize.height * 0.0445,
          ),
          Container(
            width: screensize.width,
            height: 50,
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            decoration: BoxDecoration(
                // border: Border.all(width: 1),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: otbcolor),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      topbarselection = 1;
                    });

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Payment(),
                        ));
                  },
                  child: Container(
                    width: screensize.width * 0.45,
                    height: 50,
                    margin: EdgeInsets.only(right: 2, left: 0),
                    decoration: BoxDecoration(
                        border: topbarselection == 1
                            ? Border.all(width: 1)
                            : Border.all(width: 0, color: otbcolor),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: topbarselection == 1 ? Colors.white : otbcolor),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Payments',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      topbarselection = 2;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Payment(),
                          ));
                      topbarselection = 2;
                    });
                  },
                  child: Container(
                    width: screensize.width * 0.45,
                    height: 50,
                    margin: EdgeInsets.only(right: 0, left: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: topbarselection == 2 ? Colors.white : otbcolor,
                      border: topbarselection == 2
                          ? Border.all(width: 1)
                          : Border.all(width: 0, color: otbcolor),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Invoices',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: screensize.height * 0.19,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(Product());
                  },
                  child: Container(
                    height: 82,
                    width: 82,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffF6F8FA)),
                    child: Center(
                        child: SvgPicture.asset('images/Combo shape.svg')),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Payments',
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
                  'All payments done will be show here',
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
