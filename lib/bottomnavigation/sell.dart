import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:ecampus/bottomnavigation/marketplace.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Sell extends StatefulWidget {
  const Sell({super.key});

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.030,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: Text(
                  'Discounts',
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
                width: screensize.width * 0.40,
              ),
              GestureDetector(
                onTap: () {
                 // Get.to(Marketplace());
                },
                child: SvgPicture.asset(
                  'images/editdoc.svg',
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.019,
          ),
          Container(
            height: screensize.height * 0.10,
            width: screensize.width * 0.99,
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
            ),
            child: sell1(),
          ),
          SizedBox(
            height: screensize.height * 0.039,
          ),
          Row(
            children: [
              Container(
                height: screensize.height * 0.041,
                width: screensize.width * 0.090,
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffa2a4fb),
                ),
                child: Center(
                  child: Text(
                    'JD',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        fontFamily: 'Satoshi-Variable',
                        color: Color(0xffF9FAFB),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.053,
              ),
              SvgPicture.asset(
                'images/editbutton.svg',
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
              'Overview',
              style: TextStyle(
                  //letterSpacing: 0.006,
                  //fontFamily: 'Satoshi-Variable',
                  color: filedcolor,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.0123,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                color: Colors.white,
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: screensize.width * 0.20,
                          margin: EdgeInsets.only(
                              left: screensize.width * 0.021,
                              top: screensize.height * 0.016),
                          child: Text(
                            '0',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 26),
                          ),
                        ),
                        SizedBox(
                          width: screensize.width * 0.14,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: screensize.height * 0.025,
                              right: screensize.width * 0.021),
                          child: SvgPicture.asset(
                            'images/inbox.svg',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          // width: screensize.width*0.20,
                          margin: EdgeInsets.only(
                            left: screensize.width * 0.021,
                          ),
                          child: Text(
                            'Chats to answer        ',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screensize.height * 0.020,
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.only(left: screensize.width * 0.016),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: screensize.width * 0.20,
                          margin: EdgeInsets.only(
                              left: screensize.width * 0.021,
                              top: screensize.height * 0.016),
                          child: Text(
                            '0',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 26),
                          ),
                        ),
                        SizedBox(
                          width: screensize.width * 0.14,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: screensize.height * 0.025,
                              right: screensize.width * 0.021),
                          child: SvgPicture.asset(
                            'images/tag.svg',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Container(
                      // width: screensize.width*0.20,
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.021,
                      ),
                      child: Text(
                        'Active listings           ',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            fontFamily: 'Satoshi-Variable',
                            color: filedcolor,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                    SizedBox(
                      height: screensize.height * 0.020,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.030,
          ),
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
            ),
            child: Text(
              'Performance',
              style: TextStyle(
                  //letterSpacing: 0.006,
                  //fontFamily: 'Satoshi-Variable',
                  color: filedcolor,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.0123,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                color: Colors.white,
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: screensize.width * 0.021,
                              top: screensize.height * 0.016,
                              right: screensize.width * 0.021),
                          child: Text(
                            '\$0.00',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 26),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      // width: screensize.width*0.20,
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.021,
                          right: screensize.width * 0.021),
                      child: Text(
                        '  No payout history  ',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            fontFamily: 'Satoshi-Variable',
                            color: filedcolor,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                    SizedBox(
                      height: screensize.height * 0.020,
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.only(left: screensize.width * 0.016),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: screensize.width * 0.20,
                          margin: EdgeInsets.only(
                              left: screensize.width * 0.021,
                              top: screensize.height * 0.016),
                          child: Text(
                            '0',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 26),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      // width: screensize.width*0.20,
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.021,
                          right: screensize.width * 0.021),
                      child: Text(
                        '    Click on listings    ',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            fontFamily: 'Satoshi-Variable',
                            color: filedcolor,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                    SizedBox(
                      height: screensize.height * 0.020,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.0123,
          ),
          Container(
            width: screensize.width * 0.40,
            child: Card(
              color: Colors.white,
              margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                  right: screensize.width * 0.042),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Container(
                width: screensize.width * 0.40,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: screensize.width * 0.20,
                          margin: EdgeInsets.only(
                              left: screensize.width * 0.021,
                              top: screensize.height * 0.016),
                          child: Text(
                            '0',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 26),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          // width: screensize.width*0.20,
                          margin: EdgeInsets.only(
                              left: screensize.width * 0.021,
                              right: screensize.width * 0.021),
                          child: Text(
                            'Seller rating',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screensize.height * 0.020,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class sell1 extends StatefulWidget {
  //const Discover({super.key});

  @override
  State<sell1> createState() => _DiscoverState();
}

class _DiscoverState extends State<sell1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                radius: 60,
                borderWidth: 0.2,
                borderColor: Colors.grey,
                backgroundColor: Colors.white,
                unselectedBackgroundColor: Colors.white,
                unselectedLabelStyle: TextStyle(color: splashgragy),
                labelStyle:
                    TextStyle(color: filedcolor, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    //  icon: Icon(Icons.directions_car),
                    text: "    Inbox    ",
                  ),
                  Tab(
                    // icon: Icon(Icons.directions_transit),
                    text: "  Your listining  ",
                  ),
                  Tab(
                    // icon: Icon(Icons.directions_transit),
                    text: "  Annoucements  ",
                  ),
                  Tab(
                    // icon: Icon(Icons.directions_transit),
                    text: "    Notfication    ",
                  ),

                  // Tab(
                  // //  icon: Icon(Icons.directions_car),
                  //   text: "car",
                  // ),

                  //  Tab(icon: Icon(Icons.directions_bike)),
                  //   Tab(icon: Icon(Icons.directions_car)),
                  //   Tab(icon: Icon(Icons.directions_transit)),
                  //   Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
