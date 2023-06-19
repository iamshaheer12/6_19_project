import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:ecampus/Row4/post/postProfile.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'initialScreen.dart';

class AccountHome extends StatefulWidget {
  const AccountHome({super.key});

  @override
  State<AccountHome> createState() => _AccountHomeState();
}

class _AccountHomeState extends State<AccountHome> {
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
              Container(
                alignment: Alignment.topLeft,
                height: screensize.height * 0.034,
                width: screensize.width * 0.074,
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffdbdcfe)),
                child: Center(
                  child: Text(
                    'JD',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        //fontFamily: 'Satoshi-Variable',
                        color: Color(0xff15141F),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 13),
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.2986,
              ),
              Text(
                'Home',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    //fontFamily: 'Satoshi-Variable',
                    color: Color(0xff15141F),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.0831,
          ),
          Container(
            height: 70,
            margin: EdgeInsets.only(
                left: screensize.width * 0.042,
                right: screensize.width * 0.042),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButton2(
              customButton: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    //  alignment:Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: splashcolor),
                    child: Center(
                      child: Text(
                        'JD',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xffF9FAFB),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      ),
                    ),
                  ),
                  Text(
                    'Jane Doe',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        //fontFamily: 'Satoshi-Variable',
                        color: filedcolor,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                  SizedBox(
                    width: screensize.width * 0.52,
                  ),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    color: splashcolor,
                  )
                ]),
              ),
              items: [
                ...MenuItems.firstItems.map(
                  (item) => DropdownMenuItem<MenuItem>(
                    value: item,
                    child: MenuItems.buildItem(item),
                  ),
                ),
                //const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
                ...MenuItems.secondItems.map(
                  (item) => DropdownMenuItem<MenuItem>(
                    value: item,
                    child: MenuItems.buildItem1(item),
                  ),
                ),
              ],
              onChanged: (value) {
                MenuItems.onChanged(context, value as MenuItem);
              },
              dropdownStyleData: DropdownStyleData(
                width: 330,
                padding: EdgeInsets.only(
                    left: screensize.width * 0.042,
                    right: screensize.width * 0.042,
                    top: screensize.height * 0.017),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                elevation: 8,
                offset: const Offset(0, 8),
              ),
              menuItemStyleData: MenuItemStyleData(
                // customHeights: [
                //   ...List<double>.filled(MenuItems.firstItems.length, 48),
                //   8,
                //   ...List<double>.filled(MenuItems.secondItems.length, 48),
                // ],
                padding: EdgeInsets.only(
                    left: screensize.width * 0.042,
                    right: screensize.width * 0.042),
              ),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.0357,
          ),
          GestureDetector(
            onTap: () {
              Get.to(postProfile());
            },
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
              elevation: 1,
              child: Column(children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(
                          left: screensize.width * 0.042,
                          top: screensize.height * 0.023,
                        ),
                        child: Icon(
                          CupertinoIcons.person_3,
                          color: filedcolor,
                        )
                        //Icon(CupertinoIcons.doc_text_fill,color: filedcolor,),

                        ),

                    // SizedBox(width: 2,),
                    Container(
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.05,
                        top: screensize.height * 0.023,
                        //top: 10,bottom: 10
                      ),
                      child: InkWell(
                        onTap: () {
                          //  Navigator.push(context, MaterialPageRoute(builder:
                          //      (context) => Account1(),));
                        },
                        child: Text(
                          'Club Society Profile',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: filedcolor,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screensize.height * 0.020,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.042,
                        top: screensize.height * 0.023,
                      ),
                      child: SvgPicture.asset('images/wallet.svg'),

                      //  child: Icon(
                      //   ,
                      //   color: filedcolor,
                      //  )
                    ),

                    // SizedBox(width: 2,),
                    Container(
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.05,
                        //top: 10,bottom: 10
                        top: screensize.height * 0.023,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Payment',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: filedcolor,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screensize.height * 0.011,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.042,
                        top: screensize.height * 0.023,
                      ),
                      child: Icon(
                        Icons.info_outline,
                        color: filedcolor,
                      ),
                    ),

                    // SizedBox(width: 2,),
                    Container(
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.05,
                        top: screensize.height * 0.023,
                        //top: 10,bottom: 10
                      ),
                      child: InkWell(
                        onTap: () {
                          //  Navigator.push(context, MaterialPageRoute(
                          //    builder: (context) => editprofile(

                          //    ),));
                        },
                        child: Text(
                          'Support',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: filedcolor,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screensize.height * 0.0123,
                ),
              ]),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.011,
          ),
          GestureDetector(
            onTap: () {
              Get.to(initialScreen());
            },
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
              elevation: 1,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.042,
                        top: screensize.height * 0.023,
                        bottom: screensize.height * 0.023),
                    child: SvgPicture.asset('images/logout.svg'),
                  ),

                  // SizedBox(width: 2,),
                  Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.05,
                        top: screensize.height * 0.023,
                        bottom: screensize.height * 0.023
                        //top: 10,bottom: 10
                        ),
                    child: InkWell(
                      onTap: () {
                        //  Navigator.push(context, MaterialPageRoute(
                        //    builder: (context) => editprofile(

                        //    ),));
                      },
                      child: Text(
                        'Logout',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: Color(0xffDC2626),
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [home, share];
  static const List<MenuItem> secondItems = [addacount];

  static const home = MenuItem(text: 'Club', icon: Icons.home);
  static const share = MenuItem(text: 'Society', icon: Icons.share);

  static const addacount = MenuItem(text: 'Add account', icon: Icons.logout);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffcccccc),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: TextStyle(
            color: filedcolor,
          ),
        ),
      ],
    );
  }

  static Widget buildItem1(MenuItem item) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffdbdcfe),
          ),
          child: Center(
              child: Icon(
            Icons.add,
            color: filedcolor,
          )),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: TextStyle(
            color: splashcolor,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:
        //Do something
        break;

      case MenuItems.share:
        //Do something
        break;
      case MenuItems.addacount:
        //Do something
        break;
    }
  }
}
