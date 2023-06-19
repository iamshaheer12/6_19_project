import 'package:ecampus/bottomnavigation/EvenView1.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EventView extends StatefulWidget {
  @override
  State<EventView> createState() => _EventViewState();
}

class _EventViewState extends State<EventView> {
  bool per = false;
  bool door = false;
  bool door1 = false;
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(children: [
      SizedBox(
        height: screensize.height * 0.039,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: splashcolor,
                )),
          ),
          SizedBox(
            width: screensize.width * 0.2986,
          ),
          Container(
            child: Text(
              'New Listing',
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Satoshi Variable',
                  color: filedcolor,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
      SizedBox(
        height: screensize.height * 0.066,
      ),
      GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(left: screensize.width * 0.042),
          child: SvgPicture.asset(
            'images/Container.svg',
          ),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        margin: EdgeInsets.only(left: screensize.width * 0.042),
        child: Text(
          'Photos: 0/10',
          style: TextStyle(
              fontSize: 13,
              fontFamily: 'Satoshi Variable',
              color: filedcolor,
              fontWeight: FontWeight.w700),
        ),
      ),
      SizedBox(
        height: screensize.height * 0.028,
      ),
      Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          margin: EdgeInsets.only(
              right: screensize.width * 0.042, left: screensize.width * 0.042),
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
                    'Title',
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
                    'Placeholder text',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: accountlightfinaltxtcolors,
                        fontWeight: FontWeight.w700,
                        fontSize: 13),
                  ),
                ),
              ),
            ],
          )),
      //end first contianer
      //end logout
      SizedBox(
        height: screensize.height * 0.0073,
      ),
      Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          margin: EdgeInsets.only(
              right: screensize.width * 0.042, left: screensize.width * 0.042),
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
                    'Price',
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
                    'Placeholder text',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: accountlightfinaltxtcolors,
                        fontWeight: FontWeight.w700,
                        fontSize: 13),
                  ),
                ),
              ),
            ],
          )),
      SizedBox(
        height: screensize.height * 0.0073,
      ),
      Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          margin: EdgeInsets.only(
              right: screensize.width * 0.042, left: screensize.width * 0.042),
          elevation: 0.5,
          child: Row(
            children: [
              Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.037,
                          top: screensize.height * 0.009),
                      child: Text(
                        'Category              ',
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
                        'Placeholder text',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: accountlightfinaltxtcolors,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: screensize.width * 0.48),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: screensize.height * 0.009),
                  child: SvgPicture.asset(
                    'images/dropdown.svg',
                  ),
                ),
              )
            ],
          )),
      SizedBox(
        height: screensize.height * 0.0073,
      ),
      Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          margin: EdgeInsets.only(
              right: screensize.width * 0.042, left: screensize.width * 0.042),
          elevation: 0.5,
          child: Row(
            children: [
              Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.037,
                          top: screensize.height * 0.009),
                      child: Text(
                        'Condition             ',
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
                        'Placeholder text',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: accountlightfinaltxtcolors,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: screensize.width * 0.48),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: screensize.height * 0.009),
                  child: SvgPicture.asset(
                    'images/dropdown.svg',
                  ),
                ),
              )
            ],
          )),
      SizedBox(
        height: screensize.height * 0.0073,
      ),
      Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          margin: EdgeInsets.only(
              right: screensize.width * 0.042, left: screensize.width * 0.042),
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
                    'Tags',
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
                    'Placeholder text',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: accountlightfinaltxtcolors,
                        fontWeight: FontWeight.w700,
                        fontSize: 13),
                  ),
                ),
              ),
            ],
          )),
      SizedBox(
        height: screensize.height * 0.032,
      ),
      Container(
        margin: EdgeInsets.only(left: screensize.width * 0.042),
        child: Text(
          'Meetup preferences',
          style: TextStyle(
              fontSize: 13,
              fontFamily: 'Satoshi Variable',
              color: Color(0xff576B74),
              fontWeight: FontWeight.w700),
        ),
      ),
      SizedBox(
        height: screensize.height * 0.009,
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.only(
            right: screensize.width * 0.042, left: screensize.width * 0.042),
        elevation: 0.5,
        child: Column(
          children: [
            SizedBox(height: screensize.height * 0.018,),
            Row(children: [
              Container(
                width: screensize.width * 0.0533,
                margin: EdgeInsets.only(
                    left: screensize.width * 0.026,
                    ),
                child: Icon(
                  CupertinoIcons.person_3,
                  color: filedcolor,
                  size: 23,
                ),
              ),
              Container(
                width: screensize.width * 0.30,
                margin: EdgeInsets.only(
                    left: screensize.width * 0.021,
                    ),
                child: Text(
                  'Public meetup',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Satoshi Variable',
                      color: filedcolor,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.35,
                
              ),
              Container(
                alignment: Alignment.center,
               
                child: Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                          width: 1,
                          color: Color(0xffB6C2E2),
                        )),
                    value: this.per,
                    onChanged: (value) {
                      setState(() {
                        this.per = value!;
                      });
                    }),
              )
            ]),
                        SizedBox(height: screensize.height * 0.004,),

            Row(children: [
              Container(
                width: screensize.width * 0.0533,
                margin: EdgeInsets.only(
                    left: screensize.width * 0.026,
                    ),
                child: SvgPicture.asset(
                  'images/dorof.svg',
                ),
              ),
              Container(
                width: screensize.width * 0.30,
                margin: EdgeInsets.only(
                    left: screensize.width * 0.021,
                   ),
                child: Text(
                  'Door drop-off',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Satoshi Variable',
                      color: filedcolor,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.35,
              ),
              Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        width: 1,
                        color: Color(0xffB6C2E2),
                      )),
                  value: this.door,
                  onChanged: (value) {
                    setState(() {
                      this.door = value!;
                    });
                  })
            ]),            SizedBox(height: screensize.height * 0.004,),

            Row(children: [
              Container(
                width: screensize.width * 0.0533,
                margin: EdgeInsets.only(
                    left: screensize.width * 0.026,
                    ),
                child: SvgPicture.asset(
                  'images/Open Door.svg',
                ),
              ),
              Container(
                width: screensize.width * 0.30,
                margin: EdgeInsets.only(
                    left: screensize.width * 0.021,
                    ),
                child: Text(
                  'Door Pick-up',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Satoshi Variable',
                      color: filedcolor,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.35,
              ),
              Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        width: 1,
                        color: Color(0xffB6C2E2),
                      )),
                  value: this.door1,
                  onChanged: (value) {
                    setState(() {
                      this.door1 = value!;
                    });
                  })
            ]),
            SizedBox(
              height: screensize.height * 0.018,
            ),
          ],
        ),
      ),
      SizedBox(
        height: screensize.height * 0.020,
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
              right: screensize.width * 0.042,
              left: screensize.width * 0.042,
              //top: 15,
              bottom: screensize.height * 0.06),
          height: screensize.height * 0.059,
          width: screensize.width * 0.91,
          decoration: BoxDecoration(
              color: splashcolor,
              border: Border.all(
                color: splashcolor,
                width: 1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: ElevatedButton(
            onPressed: () {
              Get.to(EventView1());
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(splashcolor),
                elevation: MaterialStateProperty.all(3)),
            child: Center(
              child: Align(
                alignment: AlignmentDirectional.center,
                child: Text(
                  'Publish',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Satoshi-Variable',
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      )
    ]));
  }
}
