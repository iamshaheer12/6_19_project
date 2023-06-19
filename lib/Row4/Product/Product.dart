import 'package:ecampus/Row4/Product/addProduct.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Product extends StatefulWidget {
  @override
  State<Product> createState() => _MemberState();
}

class _MemberState extends State<Product> {
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
                'Product',
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
                  Get.to(Addproduct());
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 82,
                  width: 82,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xffF6F8FA)),
                  child:
                      Center(child: SvgPicture.asset('images/Mask group.svg')),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Add your first Product',
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
                Container(
                  margin: EdgeInsets.only(
                      left: screensize.width * 0.065,
                      right: screensize.width * 0.065),
                  child: Text(
                    'Products are what you sell to members. They can be anything from physical goods to digital services or subscription Plans ',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        //fontFamily: 'Satoshi-Variable',
                        color: splashgragy2,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
