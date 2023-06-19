import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../studentpage/ui/widget/chatwidget.dart';
import 'EventView.dart';

class ClubSocietiesProfile extends StatefulWidget {
  //const ClubSocietiesProfile({super.key});

  @override
  State<ClubSocietiesProfile> createState() => _ClubSocietiesProfileState();
}

class _ClubSocietiesProfileState extends State<ClubSocietiesProfile> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            Container(
              height: screensize.height * 0.174,
              width: screensize.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/clubprofile.png'),
                      fit: BoxFit.cover)),
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(
                  left: screensize.width * 0.037,
                  top: screensize.height * 0.040),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('images/mvc/coloredbackarrow.png')),
            ),
            Container(
              height: screensize.height * 0.11,
              width: screensize.width * 0.24,
              margin: EdgeInsets.only(
                  top: screensize.height * 0.11,
                  left: screensize.width * 0.0613),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.white),
                  image: DecorationImage(
                      image: AssetImage('images/bg.png'), fit: BoxFit.cover)),
            ),
          ]),
          SizedBox(height: screensize.height * 0.020),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: Text(
                  'Club/Society Name',
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
                width: screensize.width * 0.35,
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: SvgPicture.asset(
                  'images/inbox.svg',
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.017,
          ),
          Container(
            margin: EdgeInsets.only(
              right: screensize.width * 0.157,
              left: screensize.width * 0.053,
            ),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Etiam eu turpis molestie,\ndictum est a, mattis tellus',
              style: TextStyle(
                  color: filedcolor,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Satoshi Variable'),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.015,
          ),
          Container(
            height: 15,
            width: 58,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
            ),
            child: SvgPicture.asset(
              'images/Business.svg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: screensize.height * 0.024,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: screensize.width * 0.453,
              height: screensize.height * 0.036,
              margin: EdgeInsets.only(
                left: screensize.width * 0.272,
                right: screensize.width * 0.272,
              ),
              child: SvgPicture.asset(
                'images/leave.svg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.044,
          ),
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
            ),
            alignment: Alignment.topLeft,
            child: Text(
              'Events/Schedule',
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
            height: screensize.height * 0.022,
          ),
          GestureDetector(
            onTap: () {
             // Get.to(EventView());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: screensize.width * 0.2,
                  height: screensize.height * 0.072,
                  margin: EdgeInsets.only(
                    left: screensize.width * 0.042,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage('images/bg1.png'),
                          fit: BoxFit.cover)),
                ),
                Column(
                  children: [
                    Text(
                      'Event Title     ',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: splashcolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    Text(
                      '  Date and Time',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: Color(0xff576B74),
                          fontWeight: FontWeight.w600,
                          fontSize: 13),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: screensize.width * 0.2,
                height: screensize.height * 0.072,
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage('images/bg1.png'),
                        fit: BoxFit.cover)),
              ),
              Column(
                children: [
                  Text(
                    'Event Title     ',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: splashcolor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  Text(
                    '  Date and Time',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Color(0xff576B74),
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.022,
          ),
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
            ),
            alignment: Alignment.topLeft,
            child: Text(
              'Meet the Team',
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
            height: screensize.height * 0.018,
          ),
          Container(
            margin: EdgeInsets.only(left: screensize.width * 0.042),
            child: Column(
              children: [
                litchatbuild(
                  text: 'Steve Solomon              ',
                  imgtxt: 'JD',
                  pageroute: '',
                  text2: '  Position/Title in club/Society',
                ),
                SizedBox(
                  height: 10,
                ),
                litchatbuild(
                  text: 'Steve Solomon              ',
                  imgtxt: 'JD',
                  pageroute: '',
                  text2: '  Position/Title in club/Society',
                ),
                SizedBox(
                  height: 10,
                ),
                litchatbuild(
                  text: 'Steve Solomon              ',
                  imgtxt: 'JD',
                  pageroute: '',
                  text2: '  Position/Title in club/Society',
                ),
              ],
            ),
          ),
          SizedBox(
            height: screensize.height * 0.022,
          ),
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
            ),
            alignment: Alignment.topLeft,
            child: Text(
              'Social Network',
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
            height: screensize.height * 0.018,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(
                    left: screensize.width * 0.042,
                  ),
                  child: SvgPicture.asset(
                    'images/fb.svg',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(
                    left: screensize.width * 0.030,
                  ),
                  child: SvgPicture.asset(
                    'images/twit.svg',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(
                    left: screensize.width * 0.030,
                  ),
                  child: SvgPicture.asset(
                    'images/insta.svg',
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
