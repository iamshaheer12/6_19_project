import 'package:ecampus/bottomnavigation/sell.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'ClubSocieties.dart';
import 'Diccount/Category.dart';

class Marketplace extends StatefulWidget {
  const Marketplace({super.key});

  @override
  State<Marketplace> createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
  Widget getPictures(String path) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.448,
      height: MediaQuery.of(context).size.width * 0.136,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover)),
    );
  }

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
                  'Marketplace',
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
                width: screensize.width * 0.30,
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: splashcolor,
                      size: 30,
                    )),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.033,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(Sell());
                },
                child: Card(
                  margin: EdgeInsets.only(left: screensize.width * 0.048),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                          width: 1, color: Color.fromARGB(255, 224, 228, 228))),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: screensize.height * 0.009,
                        bottom: screensize.height * 0.009,
                        left: screensize.width * 0.118,
                        right: screensize.width * 0.108),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'images/tag.svg',
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Selling',
                          style: TextStyle(
                              //letterSpacing: 0.006,
                              fontFamily: 'Satoshi-Variable',
                              color: Color(0xff0C212C),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.026,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Category1());
                },
                child: Card(
                  // margin: EdgeInsets.only(left: screensize.width*0.048),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                          width: 1, color: Color.fromARGB(255, 224, 228, 228))),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: screensize.height * 0.009,
                        bottom: screensize.height * 0.009,
                        left: screensize.width * 0.080,
                        right: screensize.width * 0.070),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'images/catsearch.svg',
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Categories',
                          style: TextStyle(
                              //letterSpacing: 0.006,
                              fontFamily: 'Satoshi-Variable',
                              color: Color(0xff0C212C),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.033,
          ),
          Container(
            height: screensize.height * 0.70,
            margin: EdgeInsets.only(
                left: screensize.width * 0.042,
                right: screensize.width * 0.042),
            child: GridView.count(
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              crossAxisSpacing: 4,
              mainAxisSpacing: 6,
              children: [
                getPictures('images/Rectangle 47.jpg'),
                getPictures('images/Rectangle 48.jpg'),
                getPictures('images/Rectangle 49.jpg'),
                getPictures('images/Rectangle 50.jpg'),
                getPictures('images/Rectangle 53.jpg'),
                getPictures('images/Rectangle 54.jpg'),
                getPictures('images/Rectangle 47.jpg'),
                getPictures('images/Rectangle 48.jpg'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
