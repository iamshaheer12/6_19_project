import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Module3 extends StatefulWidget {
  @override
  State<Module3> createState() => _ModuleState();
}

class _ModuleState extends State<Module3> {
  final search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                alignment: AlignmentDirectional.topStart,
                margin: EdgeInsets.only(
                    left: screensize.width * 0.037,
                    top: screensize.height * 0.029),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      CupertinoIcons.multiply,
                      color: splashcolor,
                    )),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: screensize.width * 0.042,
                    top: screensize.height * 0.029),
                child: Text(
                  'Module',
                  style: TextStyle(
                      color: Color(0xff15141F),
                      fontFamily: 'Satoshi Variable',
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: 30,
                width: 30,
                margin:
                    EdgeInsets.only(left: 7, top: screensize.height * 0.029),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    //color: Color.fromARGB(0.1,75, 78, 252),
                    color: Color(0xffE2E2E2)),
                child: Center(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.edit,
                          color: splashcolor,
                          size: 15,
                        ))),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.034,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                padding: EdgeInsets.all(8),
                // height: screensize.height*0.036,
                // width: screensize.width*0.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffE2E2E2)),
                child: Row(
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '  Label ',
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontFamily: 'Satoshi Variable',
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      CupertinoIcons.multiply_circle,
                      color: Color(0xff2B6173),
                      size: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screensize.width * 0.034,
              ),
              Container(
                padding: EdgeInsets.all(8),
                // height: screensize.height*0.036,
                // width: screensize.width*0.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffE2E2E2)),
                child: Row(
                  children: [
                    Text(
                      '  Label ',
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontFamily: 'Satoshi Variable',
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      CupertinoIcons.multiply_circle,
                      color: Color(0xff2B6173),
                      size: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screensize.width * 0.034,
              ),
              Container(
                padding: EdgeInsets.all(8),
                // height: screensize.height*0.036,
                // width: screensize.width*0.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffE2E2E2)),
                child: Row(
                  children: [
                    Text(
                      '  Label ',
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontFamily: 'Satoshi Variable',
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      CupertinoIcons.multiply_circle,
                      color: Color(0xff2B6173),
                      size: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screensize.width * 0.034,
              ),
              Container(
                padding: EdgeInsets.all(8),
                // height: screensize.height*0.036,
                // width: screensize.width*0.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffE2E2E2)),
                child: Row(
                  children: [
                    Text(
                      '  Label ',
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontFamily: 'Satoshi Variable',
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      CupertinoIcons.multiply_circle,
                      color: Color(0xff2B6173),
                      size: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.016,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                padding: EdgeInsets.all(8),
                // height: screensize.height*0.036,
                // width: screensize.width*0.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffE2E2E2)),
                child: Row(
                  children: [
                    Text(
                      '  Label ',
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontFamily: 'Satoshi Variable',
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      CupertinoIcons.multiply_circle,
                      color: Color(0xff2B6173),
                      size: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screensize.width * 0.034,
              ),
              Container(
                padding: EdgeInsets.all(8),
                // height: screensize.height*0.036,
                // width: screensize.width*0.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffE2E2E2)),
                child: Row(
                  children: [
                    Text(
                      '  Label ',
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontFamily: 'Satoshi Variable',
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      CupertinoIcons.multiply_circle,
                      color: Color(0xff2B6173),
                      size: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screensize.width * 0.034,
              ),
              Container(
                padding: EdgeInsets.all(8),
                // height: screensize.height*0.036,
                // width: screensize.width*0.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffE2E2E2)),
                child: Row(
                  children: [
                    Text(
                      '  Label ',
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontFamily: 'Satoshi Variable',
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      CupertinoIcons.multiply_circle,
                      color: Color(0xff2B6173),
                      size: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screensize.width * 0.034,
              ),
              Container(
                padding: EdgeInsets.all(8),
                // height: screensize.height*0.036,
                // width: screensize.width*0.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffE2E2E2)),
                child: Row(
                  children: [
                    Text(
                      '  Label ',
                      style: TextStyle(
                          color: Color(0xff111827),
                          fontFamily: 'Satoshi Variable',
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      CupertinoIcons.multiply_circle,
                      color: Color(0xff2B6173),
                      size: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
