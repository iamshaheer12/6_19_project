import 'package:ecampus/navcontroller.dart';
import 'package:ecampus/bottomnavigation/chat.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../Row4/LoginMenue.dart';
import '../bottomnavigation/Diccount/Discount.dart';
import '../color.dart';
import '../myMainpage.dart';
import '../newcamicon_icons.dart';
class mainpage1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _mainpagestate();
  }
}
class _mainpagestate extends State<mainpage1>{
  final NavbarController _navbarController = Get.put(NavbarController());
  List pages=[
    MainPage(),
    Discount(),
    // discuontpage(),
    chatpage(),
    Container(),
    LoginMenue()
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
     BottomNavigationBarItem(label:'home',icon:select==0?
     Image.asset('images/mvc/selectedhome.png'):
     Image.asset('images/mvc/unselectedhome.png')),
     BottomNavigationBarItem(label:'Discount',icon:select==1?
     Icon(Newcamicon.discount,color:splashcolor):  Icon(Newcamicon.discount,)
   ),
     BottomNavigationBarItem(label:'Inbox',icon:select==2?
     Image.asset('images/mvc/selectedchat.png'):
     Image.asset('images/mvc/unselectedchat.png')),
      BottomNavigationBarItem(label:'Notifications',icon:Icon(FontAwesomeIcons.bell)
    ),
         BottomNavigationBarItem(label:'Menu',icon:select==4?Icon(FontAwesomeIcons.bars,color: splashcolor,):
         Icon(FontAwesomeIcons.bars)
        ),
       ],
     ),
     ///_sitting
     body:pages[select]
     //_navbarController.widgets[_sitting],
   );
  }
}


