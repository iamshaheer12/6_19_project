import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../chat.dart';

class Category1 extends StatefulWidget {
  @override
  State<Category1> createState() => _CategoryState();
}

class _CategoryState extends State<Category1> {
  final search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.049,
          ),
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
            ),
            child: Text(
              'Category',
              style: TextStyle(
                  //letterSpacing: 0.006,
                  //fontFamily: 'Satoshi-Variable',
                  color: filedcolor,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 28),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.016,
          ),
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
              right: screensize.width * 0.042,
            ),
            height: screensize.height * 0.050,
            decoration: BoxDecoration(
              color: Color(0xffE7EAEB),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              controller: search,
              decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff94A5AB),
                  ),
                  hintText: 'Search in marketplace',
                  hintStyle: TextStyle(
                      color: Color(0xff808C91),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.023,
          ),
          GestureDetector(
            onTap: () {
              Get.to(chatpage());
            },
            child: Container(
              margin: EdgeInsets.only(
                left: screensize.width * 0.042,
              ),
              child: Text(
                'Top Category',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    fontFamily: 'Satoshi-Variable',
                    color: Color(0xff0C212C),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: screensize.height * 0.04926,
                width: screensize.width * 0.106,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffeff0fa)),
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'images/elec.svg',
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.0213,
              ),
              Text(
                'Electronics',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    fontFamily: 'Satoshi-Variable',
                    color: Color(0xff0C212C),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: screensize.height * 0.04926,
                width: screensize.width * 0.106,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 1.0, offset: Offset(0, 0))
                    ]),
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'images/women.svg',
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.0213,
              ),
              Text(
                'Women\'s clothing & shoes',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    fontFamily: 'Satoshi-Variable',
                    color: Color(0xff0C212C),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: screensize.height * 0.04926,
                width: screensize.width * 0.106,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 1.0, offset: Offset(0, 0))
                    ]),
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'images/mens.svg',
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.0213,
              ),
              Text(
                'Mens\'s clothing & shoes',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    fontFamily: 'Satoshi-Variable',
                    color: Color(0xff0C212C),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: screensize.height * 0.04926,
                width: screensize.width * 0.106,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffeff0fa)),
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'images/furniture.svg',
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.0213,
              ),
              Text(
                'Furniture',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    fontFamily: 'Satoshi-Variable',
                    color: Color(0xff0C212C),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: screensize.height * 0.04926,
                width: screensize.width * 0.106,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffeff0fa)),
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'images/vehicle.svg',
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.0213,
              ),
              Text(
                'Vehicles',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    fontFamily: 'Satoshi-Variable',
                    color: Color(0xff0C212C),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.049,
          ),
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
            ),
            child: Text(
              'Top Category',
              style: TextStyle(
                  //letterSpacing: 0.006,
                  fontFamily: 'Satoshi-Variable',
                  color: Color(0xff0C212C),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 13),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: screensize.height * 0.04926,
                width: screensize.width * 0.106,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffeff0fa)),
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'images/antique.svg',
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.0213,
              ),
              Text(
                'Antiques & collectibles',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    fontFamily: 'Satoshi-Variable',
                    color: Color(0xff0C212C),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: screensize.height * 0.04926,
                width: screensize.width * 0.106,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffeff0fa)),
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'images/appliance.svg',
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.0213,
              ),
              Text(
                'Appliances',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    fontFamily: 'Satoshi-Variable',
                    color: Color(0xff0C212C),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: screensize.height * 0.04926,
                width: screensize.width * 0.106,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffeff0fa)),
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'images/book.svg',
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.0213,
              ),
              Text(
                'Books,films & music',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    fontFamily: 'Satoshi-Variable',
                    color: Color(0xff0C212C),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: screensize.height * 0.04926,
                width: screensize.width * 0.106,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffeff0fa)),
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'images/free.svg',
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.0213,
              ),
              Text(
                'Free',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    fontFamily: 'Satoshi-Variable',
                    color: Color(0xff0C212C),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: screensize.height * 0.04926,
                width: screensize.width * 0.106,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffeff0fa)),
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'images/music.svg',
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.0213,
              ),
              Text(
                'Music Insruments',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    fontFamily: 'Satoshi-Variable',
                    color: Color(0xff0C212C),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
        ],
      ),
    );
  }
}
