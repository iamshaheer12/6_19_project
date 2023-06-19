import 'package:ecampus/Row4/post/postProfile.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class AboutPost extends StatefulWidget {
  
  @override
  State<AboutPost> createState() => _postProfileState();
}

class _postProfileState extends State<AboutPost> {
  
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
          Container(
              color: Colors.white,
              width: screensize.width,
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
                    height: 16,
                    thickness: 1.6,
                    // indent: 20,
                    // endIndent: 355,
                    color: Color(0xfff6f7f8),
                  ),
                  
                    Row(
                  children: [
                    Container(
                     
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.042),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededff),
                      ),
                      child: Center(
                        child:SvgPicture.asset('images/home.svg')
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Club',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Satoshi Variable',
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                     
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.042),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededff),
                      ),
                      child: Center(
                        child:SvgPicture.asset('images/website.svg')
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Website',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Satoshi Variable',
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                  SizedBox(height: 10,),
           
                Row(
                  children: [
                    Container(
                     
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.042),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededff),
                      ),
                      child: Center(
                        child:SvgPicture.asset('images/email.svg')
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'e-mail',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Satoshi Variable',
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                  SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                     
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.042),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededff),
                      ),
                      child: Center(
                        child:SvgPicture.asset('images/Description.svg')
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Satoshi Variable',
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                 SizedBox(height: 10,),
                  
                  
                ],
              ),
            ),
          ),
          
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
                  postProfile(),
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
