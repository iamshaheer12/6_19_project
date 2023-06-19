
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../color.dart';
import 'homepages/profilepage.dart';
import 'mainScreen/Dicover.dart';
import 'mainScreen/accomo1.dart';
import 'mainScreen/campus.dart';
import 'mainScreen/event.dart';
import 'mainScreen/jobs.dart';
import 'mainScreen/music.dart';
import 'mainScreen/posts.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: Height * 0.055,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: Width * 0.74,
                    margin: EdgeInsets.only(left: Width * 0.042),
                    // height: ,
                    child: Text(
                      'Hallo 👋 Jane!',
                      style: TextStyle(
                          //fontFamily: 'Satoshi-Variable',
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 28),
                    ),
                  ),
                  Container(
                    width: Width * 0.74,
                    margin: EdgeInsets.only(left: Width * 0.042),
                    // height: ,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: splashcolor,
                          size: 14,
                        ),
                        Text(
                          'Cork, Irland',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Variable',
                              color: splashcolor,
                              fontWeight: FontWeight.w400,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Profilepage());
                },
                child: Container(
                  width: Width * 0.165,
                  height: Height * 0.072,
                  child: Image.asset('images/Ellipse 2051.png'),
                ),
              )
            ],
          ),
          SizedBox(
            height: Height * 0.046,
          ),
          Container(
            margin: EdgeInsets.only(left: Width * 0.042),
            height: Height * 0.168,
            width: Width * 0.9573,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    height: Height * 0.168,
                    width: Width * 0.29,
                    child: MusicVido()),
                SizedBox(
                  width: 4,
                ),
                Container(
                    height: Height * 0.168,
                    width: Width * 0.29,
                    child: MusicVido()),
                SizedBox(
                  width: 4,
                ),
                Container(
                    height: Height * 0.168,
                    width: Width * 0.29,
                    child: MusicVido()),
                SizedBox(
                  width: 4,
                ),
                Container(
                    height: Height * 0.168,
                    width: Width * 0.29,
                    child: MusicVido()),
                //  MusicVido(),
                //   MusicVido(),
                //  MusicVido(),
              ],
            ),
          ),
          SizedBox(
            height: Height * 0.046,
          ),
          Container(
            margin: EdgeInsets.only(
              left: Width * 0.042,
            ),
            child: Text(
              'Campus',
              style: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
            ),
          ),
          SizedBox(
            height: Height * 0.024,
          ),
          Container(
            height: Height * 0.069,
            width: Width * 0.9573,
            margin: EdgeInsets.only(
              left: Width * 0.042,
            ),
            // width: ,
            child: Campus(),
          ),
          SizedBox(
            height: Height * 0.046,
          ),
          Row(
            children: [
              Container(
                width: Width * 0.60,
                margin: EdgeInsets.only(
                  left: Width * 0.042,
                ),
                child: Text(
                  'Accomodation',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: Width * 0.10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'View all ',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      Text(
                        '→',
                        style: TextStyle(
                            // decoration: TextDecoration.underline,
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: Height * 0.024,
          ),
          Container(
            alignment: Alignment.topLeft,
            height: Height * 0.31,
            width: Width * 0.9573,
            margin: EdgeInsets.only(
              left: Width * 0.042,
            ),
            child: Accomo1(),
          ),
          SizedBox(
            height: Height * 0.024,
          ),
          Row(
            children: [
              Container(
                width: Width * 0.60,
                margin: EdgeInsets.only(
                  left: Width * 0.042,
                ),
                child: Text(
                  'Discover Ireland',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: Width * 0.10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'View all ',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      Text(
                        '→',
                        style: TextStyle(
                            // decoration: TextDecoration.underline,
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: Height * 0.0246,
          ),
          Container(
            margin: EdgeInsets.only(
              left: Width * 0.042,
            ),
            height: Height * 0.2137,
            width: Width * 0.9573,
            child: Discover(),
          ),
          SizedBox(
            height: Height * 0.024,
          ),
          Row(
            children: [
              Container(
                width: Width * 0.50,
                margin: EdgeInsets.only(
                  left: Width * 0.042,
                ),
                child: Text(
                  'Jobs',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: Width * 0.20,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'View all ',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      Text(
                        '→',
                        style: TextStyle(
                            // decoration: TextDecoration.underline,
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: Height * 0.024,
          ),
          Container(
            height: Height * 0.185,
            width: Width * 0.9573,
            margin: EdgeInsets.only(
              left: Width * 0.042,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: Height * 0.165,
                  width: Width * 0.74,
                  child: jobs(),
                ),
                SizedBox(
                  width: Width * 0.032,
                ),
                Container(
                  height: Height * 0.165,
                  width: Width * 0.74,
                  child: jobs(),
                ),
                SizedBox(
                  width: Width * 0.032,
                ),
                Container(
                  height: Height * 0.165,
                  width: Width * 0.74,
                  child: jobs(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Height * 0.024,
          ),
          Row(
            children: [
              Container(
                width: Width * 0.50,
                margin: EdgeInsets.only(
                  left: Width * 0.042,
                ),
                child: Text(
                  'Posts',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: Width * 0.20,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'View all ',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      Text(
                        '→',
                        style: TextStyle(
                            // decoration: TextDecoration.underline,
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: Height * 0.024,
          ),
          Container(
            height: Height * 0.401,
            width: Width * 0.9573,
            margin: EdgeInsets.only(
              left: Width * 0.042,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: Height * 0.381,
                  width: Width * 0.91,
                  child: Posts(),
                ),
                Container(
                  height: Height * 0.381,
                  width: Width * 0.91,
                  child: Posts(),
                ),
                Container(
                  height: Height * 0.381,
                  width: Width * 0.91,
                  child: Posts(),
                ),
                Container(
                  height: Height * 0.381,
                  width: Width * 0.91,
                  child: Posts(),
                )
              ],
            ),
          ),
          SizedBox(
            height: Height * 0.046,
          ),
          Row(
            children: [
              Container(
                width: Width * 0.50,
                margin: EdgeInsets.only(
                  left: Width * 0.042,
                ),
                child: Text(
                  'Events',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: Width * 0.20,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'View all ',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      Text(
                        '→',
                        style: TextStyle(
                            // decoration: TextDecoration.underline,
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: Height * 0.024,
          ),
          Container(
            height: Height * 0.15,
            width: Width * 0.9573,
            margin: EdgeInsets.only(
              left: Width * 0.042,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.126,
                  width: MediaQuery.of(context).size.width * 0.274,
                  child: event2(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.032,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.126,
                  width: MediaQuery.of(context).size.width * 0.274,
                  child: event2(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.032,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.126,
                  width: MediaQuery.of(context).size.width * 0.274,
                  child: event2(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.032,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.126,
                  width: MediaQuery.of(context).size.width * 0.274,
                  child: event2(),
                ),
                // SizedBox(width: MediaQuery.of(context).size.width*0.032 ,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
