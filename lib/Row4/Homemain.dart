import 'package:ecampus/bottomnavigation/chat.dart';
import 'package:ecampus/navcontroller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../Row4/LoginMenue.dart';
import '../bottomnavigation/Diccount/Discount.dart';
import '../color.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../myMainpage.dart';
import '../newcamicon_icons.dart';
import 'Calander/calander.dart';
import 'Home.dart';
import 'Member/member.dart';
import 'Product/Product.dart';
class mainpage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _mainpagestate();
  }
}
class _mainpagestate extends State<mainpage2>{
  final NavbarController _navbarController = Get.put(NavbarController());
  List pages=[
    Home(),
    Product(),
    // discuontpage(),
    chatpage(),
    Member(),
    Calandar()
    // campuspage(),///menu
    // menu(),
  ];

  void ontapnavpar(int value){
    setState(() {
      select=value;
    });
  }
  var select=0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar:BottomNavigationBar(
       selectedItemColor: splashcolor,
       unselectedItemColor: Colors.grey.shade500,
       currentIndex: select,
       elevation: 14,
      onTap: ontapnavpar,
      showSelectedLabels: true,
       showUnselectedLabels: true,
       items: [
     BottomNavigationBarItem(label:'Home',icon:select==0?
     SvgPicture.asset('images/home.svg'):
     SvgPicture.asset('images/home.svg',color:Color(0xff9CA2AA) ,)),
     BottomNavigationBarItem(label:'Discount',icon:select == 1? 
     SvgPicture.asset('images/Products.svg',color: splashcolor,):SvgPicture.asset('images/Products.svg',)
   ),
     BottomNavigationBarItem(label:'Inbox',icon:select==2?
     SvgPicture.asset('images/chat.svg',color: splashcolor,):
    SvgPicture.asset('images/chat.svg')),
      BottomNavigationBarItem(label:'Members',icon:select==3?
     SvgPicture.asset('images/members.svg',color: splashcolor,):
    SvgPicture.asset('images/members.svg')
    ),
         BottomNavigationBarItem(label:'Calendar',icon:select==4?
     SvgPicture.asset('images/calamdar2.svg',color: splashcolor,):
    SvgPicture.asset('images/calamdar2.svg')
        ),
       ],
     ),
     ///_sitting
     body:pages[select]
     //_navbarController.widgets[_sitting],
   );
  }
}


