import 'package:ecampus/Row4/selectStructure.dart';
import 'package:ecampus/bottomnavigation/marketplace.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:get/get.dart';

class LoginMenue extends StatefulWidget {
  const LoginMenue({super.key});

  @override
  State<LoginMenue> createState() => _LoginMenueState();
}

class _LoginMenueState extends State<LoginMenue> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.083,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                alignment: Alignment.topLeft,
                child: Text(
                  'Menue',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: splashcolor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 28),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.0209,
          ),
          Container(
            height: 80,
            margin: EdgeInsets.only(
              left: screensize.width * 0.044,
              right: screensize.width * 0.04,
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: DropdownButton2(
              customButton: Card(
//margin: EdgeInsets.only(left: screensize.width*0.042,right: screensize.width*0.042),
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
                  borderRadius: BorderRadius.circular(8),
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
            height: screensize.height * 0.020,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                margin: EdgeInsets.only(
                    left: screensize.width * 0.056,
                    right: screensize.width * 0.029),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: screensize.height * 0.026,
                          left: screensize.width * 0.033,
                          right: screensize.width * 0.35),
                      child: SvgPicture.asset('images/calandar.svg'),
                    ),
                    SizedBox(
                      height: screensize.height * 0.014,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          // alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                              left: screensize.width * 0.033,
                              bottom: screensize.height * 0.022,
                              right: screensize.width * 0.20),
                          child: Text(
                            'Calendar',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                //fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Marketplace());
                },
                child: Card(
                  margin: EdgeInsets.only(right: screensize.width * 0.029),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: screensize.height * 0.026,
                            left: screensize.width * 0.033,
                            right: screensize.width * 0.35),
                        child: SvgPicture.asset('images/marketplace.svg'),
                      ),
                      SizedBox(
                        height: screensize.height * 0.014,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                                left: screensize.width * 0.033,
                                bottom: screensize.height * 0.022,
                                right: screensize.width * 0.11),
                            child: Text(
                              'Marketplace',
                              style: TextStyle(
                                  //letterSpacing: 0.006,
                                  //fontFamily: 'Satoshi-Variable',
                                  color: filedcolor,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.020,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                margin: EdgeInsets.only(
                    left: screensize.width * 0.056,
                    right: screensize.width * 0.029),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: screensize.height * 0.026,
                          left: screensize.width * 0.033,
                          right: screensize.width * 0.35),
                      child: SvgPicture.asset('images/jobs.svg'),
                    ),
                    SizedBox(
                      height: screensize.height * 0.014,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                              right: screensize.width * 0.29,
                              left: screensize.width * 0.033,
                              bottom: screensize.height * 0.022),
                          child: Text(
                            'Jobs',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                //fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(right: screensize.width * 0.029),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: screensize.height * 0.026,
                          left: screensize.width * 0.033,
                          right: screensize.width * 0.33),
                      child: SvgPicture.asset('images/accomodation.svg'),
                    ),
                    SizedBox(
                      height: screensize.height * 0.014,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                              left: screensize.width * 0.033,
                              right: screensize.width * 0.04,
                              bottom: screensize.height * 0.022),
                          child: Text(
                            'Accomodation',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                //fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.020,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                margin: EdgeInsets.only(
                    left: screensize.width * 0.056,
                    right: screensize.width * 0.029),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: screensize.height * 0.026,
                          left: screensize.width * 0.033,
                          right: screensize.width * 0.35),
                      child: SvgPicture.asset('images/saved.svg'),
                    ),
                    SizedBox(
                      height: screensize.height * 0.014,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                              left: screensize.width * 0.033,
                              bottom: screensize.height * 0.022,
                              right: screensize.width * 0.26),
                          child: Text(
                            'Saved',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                //fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(right: screensize.width * 0.029),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: screensize.height * 0.026,
                          left: screensize.width * 0.033,
                          right: screensize.width * 0.35),
                      child: SvgPicture.asset('images/booking.svg'),
                    ),
                    SizedBox(
                      height: screensize.height * 0.014,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                              left: screensize.width * 0.033,
                              bottom: screensize.height * 0.022,
                              right: screensize.width * 0.22),
                          child: Text(
                            'Booking',
                            style: TextStyle(
                                //letterSpacing: 0.006,
                                //fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.020,
          ),
          Card(
            margin: EdgeInsets.only(
                left: screensize.width * 0.056,
                right: screensize.width * 0.5013),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: screensize.height * 0.026,
                      left: screensize.width * 0.033,
                      right: screensize.width * 0.35),
                  child: SvgPicture.asset('images/camMap.svg'),
                ),
                SizedBox(
                  height: screensize.height * 0.014,
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                          top: screensize.height * 0.026,
                          left: screensize.width * 0.033,
                          bottom: screensize.height * 0.022),
                      child: Text(
                        'Campus Map',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: filedcolor,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
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
        Get.to(Selectstructure());
        break;
    }
  }
}
