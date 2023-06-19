import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventView1 extends StatefulWidget {
  const EventView1({super.key});

  @override
  State<EventView1> createState() => _EventView1State();
}

class _EventView1State extends State<EventView1> {
  bottomsheet() async {
    return showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        //backgroundColor: Col, // <-- SEE HERE
        builder: (context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 7),
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    'images/handle.svg',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.036,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.042),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededff),
                      ),
                      child: Icon(
                      
                        Icons.add_circle_outline,
                        color: splashcolor,
                        weight: 10,
                        size:30,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Add to calender',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Satoshi Variable',
                          color: Color(0xff0C212C),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.029,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.042),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededff),
                      ),
                      child: Center(
                        
                        child: SvgPicture.asset(
                          'images/copy.svg',
                          fit: BoxFit.contain,
                          height: 25,
                          width: 25,
                          colorBlendMode: BlendMode.plus,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Copy link',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Satoshi Variable',
                          color: Color(0xff0C212C),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.029,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.042),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededff),
                      ),
                      child: Center(
                       
                        child: SvgPicture.asset(
                          'images/save.svg',
                          height: 25,
                          width: 25,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Save',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Satoshi Variable',
                          color: Color(0xff0C212C),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.029,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.042),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededff),
                      ),
                      child: Icon(
                        Icons.help_outline_outlined,
                        color: splashcolor,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Find support or report event',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Satoshi Variable',
                          color: Color(0xff0C212C),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.029,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.042),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededff),
                      ),
                      child: Center(
                        
                        child: SvgPicture.asset(
                          'images/notification.svg',
                          height: 25,
                          width: 25,
                          //color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Find support or report event',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Satoshi Variable',
                          color: Color(0xff0C212C),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: screensize.height * 0.262,
                width: screensize.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/rectangle.png'),
                        fit: BoxFit.cover)),
              ),
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
                        color: Colors.white,
                      )))
            ],
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 1,
              ),
              Text(
                'Date',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Satoshi Variable',
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: screensize.width * 0.077,
              ),
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Icon(
                  Icons.schedule_outlined,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 1,
              ),
              Text(
                'Time',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Satoshi Variable',
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: screensize.width * 0.27,
              ),
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: SvgPicture.asset(
                  'images/event.svg',
                ),
              ),
              SizedBox(
                width: 1,
              ),
              Text(
                '20 going  ',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Satoshi Variable',
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.012,
          ),
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
            ),
            child: Text(
              'Title',
              style: TextStyle(
                  //letterSpacing: 0.006,
                  fontFamily: 'Satoshi-Variable',
                  color: filedcolor,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Icon(
                  Icons.location_on_outlined,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 1,
              ),
              Text(
                'Location',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Satoshi Variable',
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.043,
          ),
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
            ),
            child: Text(
              'Description',
              style: TextStyle(
                  //letterSpacing: 0.006,
                  fontFamily: 'Satoshi-Variable',
                  color: filedcolor,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
              right: screensize.width * 0.042,
            ),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus',
              style: TextStyle(
                  //letterSpacing: 0.006,
                  //fontFamily: 'Satoshi-Variable',
                  color: filedcolor,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: screensize.width * 0.042),
                    child: Icon(
                      Icons.block_outlined,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 17,),
                ],
              ),
              SizedBox(
                width: 2,
              ),
              Column(
                children: [
                  Container(
                    child: Text(
                      'Minimum age',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          fontFamily: 'Satoshi-Variable',
                          color: filedcolor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ),
                  Container(
                    child: Text(
                      '18+',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          fontFamily: 'Satoshi-Variable',
                          color: splashcolor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 13),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screensize.width * 0.069,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: screensize.width * 0.042),
                    child: SvgPicture.asset(
                      'images/mens.svg',
                    ),
                  ),
                    SizedBox(height: 17,),
                ],
              ),
              SizedBox(
                width: 1,
              ),
              Column(
                children: [
                  Container(
                    child: Text(
                      'Dress code   ',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          fontFamily: 'Satoshi-Variable',
                          color: filedcolor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ),
                  Container(
                    child: Text(
                      '  Smart casual',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          fontFamily: 'Satoshi-Variable',
                          color: splashcolor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 13),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.015,
          ),
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
            ),
            child: Text(
              'Special deals',
              style: TextStyle(
                  //letterSpacing: 0.006,
                  fontFamily: 'Satoshi-Variable',
                  color: filedcolor,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.008,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
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
                            'Title                      ',
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
                        //margin: EdgeInsets.only(top: screensize.height * 0.002),
                        child: Text(
                          '\$7',
                          style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                      )),
                ],
              )),
          SizedBox(
            height: screensize.height * 0.008,
          ),
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
            ),
            child: Text(
              'Tickets',
              style: TextStyle(
                  //letterSpacing: 0.006,
                  fontFamily: 'Satoshi-Variable',
                  color: filedcolor,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.008,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
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
                            'Title                      ',
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
                       // margin: EdgeInsets.only(top: screensize.height * 0.019),
                        child: Text(
                          '\$7',
                          style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                      )),
                ],
              )),
          SizedBox(
            height: screensize.height * 0.016,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () async {
                  bottomsheet();
                },
                child: Container(
                  margin: EdgeInsets.only(left: screensize.width * 0.042),
                  child: SvgPicture.asset(
                    'images/booknow.svg',
                  ),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                 // margin: EdgeInsets.only(left: screensize.width * 0.042),
                  child: SvgPicture.asset(
                    'images/Invite.svg',
                  ),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  //margin: EdgeInsets.only(left: screensize.width * 0.042),
                  child: SvgPicture.asset(
                    'images/menue.svg',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.042,
          )
        ],
      ),
    );
  }
}
