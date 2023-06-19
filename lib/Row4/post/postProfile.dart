import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

import 'aboutPost.dart';

class postProfile extends StatefulWidget {
  const postProfile({super.key});

  @override
  State<postProfile> createState() => _postProfileState();
}

class _postProfileState extends State<postProfile> {
  final mind = TextEditingController();
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
                      child: Center(
                        child: SvgPicture.asset(
                            'images/pinpost.svg',
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
                      'Pin post',
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
                      'Save post',
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
                        child: 
                        SvgPicture.asset(
                          'images/edit.svg',
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
                      'Edit',
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
                          'images/delete.svg',
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
                      'Delete',
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
                            'images/editearch.svg',
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
                      'View Edit history',
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
          SizedBox(
            height: screensize.height * 0.034,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    left: screensize.width * 0.042,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: splashcolor,
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.19,
              ),
              Text(
                'Club/Society Name  ',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    //fontFamily: 'Satoshi-Variable',
                    color: Color(0xff15141F),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.arrow_drop_down,
                  color: filedcolor,
                ),
              ),
              SizedBox(
                width: screensize.width * 0.08,
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  color: splashcolor,
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.0258,
          ),
          Stack(children: [
            Container(
              height: screensize.height * 0.18,
              width: screensize.width * 1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/clubprofile.png'),
                      fit: BoxFit.cover)),
            ),
            Center(
              child: Container(
                height: screensize.height * 0.11,
                width: screensize.width * 0.24,
                margin: EdgeInsets.only(top: screensize.height * 0.1206),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: splashcolor),
                child: Center(
                  child: Text(
                    'JD',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        //fontFamily: 'Satoshi-Variable',
                        color: Color(0xffF9FAFB),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 34),
                  ),
                ),
              ),
            )
          ]),
          SizedBox(
            height: screensize.height * 0.017,
          ),
          Center(
            child: Text(
              'Club/Society Name  ',
              style: TextStyle(
                  //letterSpacing: 0.006,
                  //fontFamily: 'Satoshi-Variable',
                  color: Color(0xff15141F),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              '36 Members',
              style: TextStyle(
                  //letterSpacing: 0.006,
                  //fontFamily: 'Satoshi-Variable',
                  color: Color(0xffcccccc),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 13),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.014,
          ),
          Center(
              child: GestureDetector(
                  onTap: () {
                    bottomsheet();
                  },
                  child: SvgPicture.asset('images/viewtool.svg'))),
          SizedBox(
            height: screensize.height * 0.032,
          ),
          Card(
            elevation: 0.8,
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  SizedBox(
                    height: screensize.height * 0.0135,
                  ),
                  Container(
                      width: screensize.width * 0.70,
                      margin: EdgeInsets.only(right: screensize.width * 0.23),
                      alignment: Alignment.topLeft,
                      height: screensize.height * 0.065,
                      child: post22()),
                  Divider(
                    height: 10,
                    thickness: 1.6,
                    // indent: 20,
                    // endIndent: 355,
                    color: Color(0xfff6f7f8),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: screensize.width * 0.042),
                        child: Text(
                          'Your Post',
                          style: TextStyle(
                              //letterSpacing: 0.006,
                              //fontFamily: 'Satoshi-Variable',
                              color: Color(0xff131313),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screensize.height * 0.02586,
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: screensize.height * 0.0174,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffcccccc)),
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.053,
                      ),
                    ),
                    Container(
                      width: screensize.width * 0.83,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        margin: EdgeInsets.only(
                            left: screensize.width * 0.026,
                            right: screensize.width * 0.053),
                        child: TextField(
                          controller: mind,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xfff6f7f8),
                              focusedBorder: OutlineInputBorder(
                                //borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: splashcolor,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 0.1)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 0.1)),
                              contentPadding: EdgeInsets.only(
                                left: 8,
                              ),
                              hintText: '   What\'s on your mind',
                              hintStyle: TextStyle(
                                //fontFamily: 'Satoshi-Variable',
                                color: adidaslogocfdolors,
                                fontWeight: FontWeight.w300,
                                fontSize: 13,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: screensize.width * 0.053),
                      child: SvgPicture.asset('images/editdoc.svg'),
                    ),
                    SizedBox(width: 3),
                    Text(
                      'Status',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: filedcolor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    SizedBox(width: screensize.width * 0.06933),
                    Container(
                      margin: EdgeInsets.only(left: screensize.width * 0.053),
                      child: Icon(Icons.image_outlined, color: filedcolor),
                    ),
                    Text(
                      'Photo',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: filedcolor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    SizedBox(width: screensize.width * 0.159),
                    SvgPicture.asset('images/managepost.svg')
                  ],
                ),
                SizedBox(
                  height: screensize.height * 0.0174,
                ),
              ],
            ),
          ),
          Card(
              elevation: 0.6,
              child: Column(children: [
                SizedBox(
                  height: screensize.height * 0.0174,
                ),
                Row(
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffcccccc)),
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.053,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        Container(
                          width: screensize.width*0.50,
                          child: Text(
                            'Club/Society Name',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                //fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                        Container(
                          width: screensize.width*0.50,
                          child: Text(
                            'Posted by Jon doe',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                //fontFamily: 'Satoshi-Variable',
                                color: Color(0xffcccccc),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 10),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: screensize.width * 0.053,
                    right: screensize.width * 0.053,
                  ),
                  child: Text(
                    'If you think adventure is dangerous, try routine, it’s letha Paulo Coelho! Good morning all friends.',
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
                  height: 10,
                ),
              ]))
        ],
      ),
    );
  }
}

class post22 extends StatefulWidget {
  //const Discover({super.key});

  @override
  State<post22> createState() => _DiscoverState();
}

class _DiscoverState extends State<post22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                radius: 60,
                //borderWidth: 0.2,
                // borderColor: Colors.grey,
                backgroundColor: Color(0xffd2d3fe),
                unselectedBackgroundColor: Colors.white,
                unselectedLabelStyle: TextStyle(color: filedcolor),
                labelStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    //  icon: Icon(Icons.directions_car),
                    text: "  Posts  ",
                  ),
                  Tab(
                    // icon: Icon(Icons.directions_transit),
                    text: "    About    ",
                  ),
                  Tab(
                    // icon: Icon(Icons.directions_transit),
                    text: "     Photos     ",
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
                 AboutPost(),
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
