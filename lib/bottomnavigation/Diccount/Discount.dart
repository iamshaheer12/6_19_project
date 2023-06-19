import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:get/get.dart';

import 'Category.dart';

class Discount extends StatefulWidget {
  @override
  State<Discount> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Discount> {
  int topbarselection = 1;

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xfff9fafa),
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
              IconButton(
                  onPressed: () {
                    //Get.to(Category1());
                  },
                  icon: Icon(
                    Icons.search,
                    color: splashcolor,
                  ))
            ],
          ),
          SizedBox(
            height: screensize.height * 0.013,
          ),
          Container(
            width: screensize.width * 0.138,
            height: screensize.height * 0.097,
            child: Category(),
          ),
          SizedBox(
            height: screensize.height * 0.046,
          ),
          Container(
            width: screensize.width,
            height: 50,
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            decoration: BoxDecoration(
                // border: Border.all(width: 1),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: otbcolor),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      topbarselection = 1;
                    });

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Discount(),
                        ));
                  },
                  child: Container(
                    width: screensize.width * 0.45,
                    height: 50,
                    margin: EdgeInsets.only(right: 2, left: 0),
                    decoration: BoxDecoration(
                        border: topbarselection == 1
                            ? Border.all(width: 1)
                            : Border.all(width: 0, color: otbcolor),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: topbarselection == 1 ? Colors.white : otbcolor),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Trending',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      topbarselection = 2;
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => recomanded(),
                      //     ));
                      topbarselection = 2;
                    });
                  },
                  child: Container(
                    width: screensize.width * 0.45,
                    height: 50,
                    margin: EdgeInsets.only(right: 0, left: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: topbarselection == 2 ? Colors.white : otbcolor,
                      border: topbarselection == 2
                          ? Border.all(width: 1)
                          : Border.all(width: 0, color: otbcolor),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Recommended',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: screensize.height * 0.038,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: screensize.width * 0.30,
                  margin: EdgeInsets.only(left: screensize.width * 0.042),
                  child: Text(
                    'Latest Offers',
                    style: TextStyle(
                        color: Color(0xff94A5AB),
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Satoshi Variable'),
                  ),
                ),
                SizedBox(
                  width: screensize.width * 0.47,
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      color: splashcolor,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Satoshi Variable'),
                )
              ],
            ),
          ),
          Container(
            height: screensize.height * 0.2650,
            width: screensize.width * 0.99,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Brands(
                    col: true,
                    logo: 'images/puma-logo.svg',
                    name: 'images/puma.jpg',
                    name1: 'PUMA'),
                Brands(
                    col: false,
                    logo: 'images/adidas-8.svg',
                    name: 'images/adidas.jpg',
                    name1: 'ADIDAS'),
                Brands(
                    col: true,
                    logo: 'images/puma-logo.svg',
                    name: 'images/puma.jpg',
                    name1: 'PUMA'),
                Brands(
                    col: false,
                    logo: 'images/adidas-8.svg',
                    name: 'images/adidas.jpg',
                    name1: 'ADIDAS'),
                Brands(
                    col: true,
                    logo: 'images/puma-logo.svg',
                    name: 'images/puma.jpg',
                    name1: 'PUMA'),
                Brands(
                    col: false,
                    logo: 'images/adidas-8.svg',
                    name: 'images/adidas.jpg',
                    name1: 'ADIDAS'),
              ],
            ),
          ),
          SizedBox(
            height: screensize.height * 0.029,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: screensize.width * 0.40,
                  margin: EdgeInsets.only(
                    left: screensize.width * 0.042,
                  ),
                  child: Text(
                    'Recomended for you',
                    style: TextStyle(
                        color: Color(0xff94A5AB),
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Satoshi Variable'),
                  ),
                ),
                SizedBox(
                  width: screensize.width * 0.37,
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      color: splashcolor,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Satoshi Variable'),
                )
              ],
            ),
          ),
          SizedBox(
            height: screensize.height * 0.019,
          ),
          Container(
            height: screensize.height * 0.2650,
            width: screensize.width * 0.99,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Brands(
                    col: true,
                    logo: 'images/puma-logo.svg',
                    name: 'images/puma.jpg',
                    name1: 'PUMA'),
                Brands(
                    col: false,
                    logo: 'images/adidas-8.svg',
                    name: 'images/adidas.jpg',
                    name1: 'ADIDAS'),
                Brands(
                    col: true,
                    logo: 'images/puma-logo.svg',
                    name: 'images/puma.jpg',
                    name1: 'PUMA'),
                Brands(
                    col: false,
                    logo: 'images/adidas-8.svg',
                    name: 'images/adidas.jpg',
                    name1: 'ADIDAS'),
                Brands(
                    col: true,
                    logo: 'images/puma-logo.svg',
                    name: 'images/puma.jpg',
                    name1: 'PUMA'),
                Brands(
                    col: false,
                    logo: 'images/adidas-8.svg',
                    name: 'images/adidas.jpg',
                    name1: 'ADIDAS'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Category extends StatefulWidget {
  //const Discover({super.key});

  @override
  State<Category> createState() => _DiscoverState();
}

class _DiscoverState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9fafa),
      body: SafeArea(
        child: DefaultTabController(
          length: 5,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                height: 72,

                //  radius: 100,
                //borderWidth: 0.2,
                //borderColor: Color.fromARGB(255, 82, 62, 62),
                backgroundColor: Color(0xfff9fafa),
                unselectedBackgroundColor: Color(0xfff9fafa),
                //unselectedLabelStyle: TextStyle(color: splashgragy),
                //labelStyle:
                //   TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    //  height: 150,
                    child: Container(
                      height: 100,
                      child: Column(
                        children: [
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xfff0f1fa)),
                            child: Center(
                              child: SvgPicture.asset(
                                'images/shopping.svg',
                              ),
                            ),
                          ),
                          Container(
                            //height: 100,
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              '  Shopping  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    height: 100,
                    child: Container(
                      height: 100,
                      child: Column(
                        children: [
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xfff0f1fa)),
                            child: Center(
                              child: SvgPicture.asset(
                                'images/food.svg',
                              ),
                              //Icon(Icons.local_pizza_outlined,color: splashcolor,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              '  Food  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 100,
                      child: Column(
                        children: [
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xfff0f1fa)),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.heart,
                                color: splashcolor,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              '  Fashion  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 100,
                      child: Column(
                        children: [
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xfff0f1fa)),
                            child: Center(
                              child: SvgPicture.asset(
                                'images/travel.svg',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              '  Travel  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 100,
                      color: Color(0xfff9fafa),
                      child: Column(
                        children: [
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xfff0f1fa)),
                            child: Center(
                              child: SvgPicture.asset(
                                'images/travel.svg',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              '  Travel  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Container(),
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
  }
}

class Brands extends StatelessWidget {
  String name = '';
  String logo = '';
  String name1 = '';
  bool col = false;
  Brands({
    required this.logo,
    required this.name,
    required this.name1,
    required this.col,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 182,
      width: 176,
      child: Card(
        //color: Colors.white,
        elevation: 0.3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Stack(
          children: [
            Container(
              height: 119,
              width: 176,
              child: Image.asset(
                name,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 11, top: 97),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: col ? Colors.white: Color(0xffC58561) ,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.5,
                  )),
              child: Center(
                child: SvgPicture.asset(
                  logo,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 11, top: 138),
              child: Text(
                name1,
                style: TextStyle(
                    color: filedcolor,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Satoshi Variable'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 11, top: 165),
              child: Text(
                'Online',
                style: TextStyle(
                    color: splashgragy,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Satoshi Variable'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
