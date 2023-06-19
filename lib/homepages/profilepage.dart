import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ecampus/virtualcard/virtualcard.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../Row4/initialScreen.dart';
import '../../../color.dart';

import 'Account1.dart';
import 'editprofile.dart';
import 'secorityandprivacy.dart';

class Profilepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Profilepagestate();
  }
}

// CollectionReference users = FirebaseFirestore.instance.collection('user');
// var crnuser=FirebaseAuth.instance.currentUser;

Map<String, dynamic> test = new Map();

class _Profilepagestate extends State<Profilepage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
 

    return Scaffold(
      backgroundColor: profilebackgroudcolors,
      body: 
  
          
           ListView(
              children: [
                Container(
                  alignment: AlignmentDirectional.topStart,
                   margin: EdgeInsets.only(left: screensize.width * 0.037, top: screensize.height*0.029),
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset('images/mvc/coloredbackarrow.png')),
                ),
                Row(
                  children: [
                    Container(
                      width: screensize.width*0.61,
                      margin: EdgeInsets.only(left: screensize.width * 0.042),
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'Jane Doe',
                          style: TextStyle(
                              //fontFamily: 'Satoshi-Medium',
                              color: Color(0xff15141F),

                              fontWeight: FontWeight.w600,
                              fontSize: 28),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.153, top: 0),
                      child: InkWell(
                        child: Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                              color: splashcolor,
                              border: Border.all(width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              'JD',
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Variable',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: screensize.width * 0.042),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      ' 121761538                ',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color:Color(0xff6B7280),
                          fontWeight: FontWeight.w500,
                        fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.036,
                ),
                Center(
                  child: Container(
                    //width: screensize.width * 0.6,
                    height: screensize.height*0.059,
                    margin: EdgeInsets.only(right: screensize.width*0.042, left: screensize.width*0.042),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: InkWell(
                        onTap: () {
                          print("add to wallet");
                        },
                        child: Image.asset('images/a.jpg')),
                  ),
                ),
                Center(
                  child: Container(
                   // width: screensize.width * 0.6,
                    height: screensize.height*0.059,
                    margin: EdgeInsets.only(
                       right: screensize.width*0.062, left: screensize.width*0.062, 
                       top: screensize.height * 0.011),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: splashcolor, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: InkWell(
                      onTap: () {
                        // getdata();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => virtualcard(
                             
                              ),
                            ));

                        ///Virtualcard
                      },
                      child: Align(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          'Virtual Card',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: splashcolor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.030,
                ),
                Container(
                  margin: EdgeInsets.only(left:screensize.width*0.042 , ),
                  child: Text(
                      ' Profile',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color:Color(0xff6B7280),
                          fontWeight: FontWeight.w500,
                        fontSize: 12),
                    ),
                ),
                 SizedBox(
                  height: screensize.height * 0.034,
                ),
               
                //three rows
               
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.only(
                      right: screensize.width * 0.042,
                      left: screensize.width * 0.042),
                  elevation: 1,
                  child: Column(
                    children: [
                      Container(
                       // width: screensize.width * 0.5,
                        //height: 149,
                        // decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.circular(15)),
                        child: InkWell(
                            onTap: () {
                              print("three rows");
                            },
                            child: Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: screensize.width * 0.042,
                                            top: screensize.height*0.023,
                                            ),
                                        child: Icon(CupertinoIcons.person,color: filedcolor,),
                                      ),
                                      Row(
                                      
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: screensize.width * 0.05,
                                                 top:  screensize.height*0.023,
                                                // bottom: 10
                                                ),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => Account1(
                                                      
                                                      ),
                                                    ));
                                              },
                                              child: Text(
                                                'Account details',
                                                style: TextStyle(
                                                    fontFamily: 'Satoshi-Light',
                                                    color: filedcolor,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // height: 18,
                                            // width: 68,
                                            margin: EdgeInsets.only(
                                                right: screensize.width *0.012,
                                                left: screensize.width * 0.15,
                                               top:  screensize.height*0.023,
                                                ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(60),
                                                color: notverifiedcolors),
                                            child: Text(
                                              ' Not Completed ',
                                              style: TextStyle(
                                                  fontFamily: 'Satoshi-Light',
                                                  color: notverifiedtextcolors,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: screensize.height*0.041,
                                  ),
                                  //end first row
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: screensize.width * 0.037,
                                            // top: 10,
                                            // bottom: 10
                                            ),
                                        child: Icon(
                                          CupertinoIcons.lock,
                                          color: filedcolor,),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: screensize.width * 0.05,
                                            // top: 10,
                                            // bottom: 10
                                            ),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      secorityandprivacy(
                                                         ),
                                                ));
                                          },
                                          child: Text(
                                            'Security & privacy',
                                            style: TextStyle(
                                                fontFamily: 'Satoshi-Light',
                                                color: filedcolor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                   SizedBox(
                                    height: screensize.height*0.041,
                                  ),
                                  //end Second row
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                       left: screensize.width * 0.037,
                                            // top: 10,
                                            // bottom: 10
                                            ),
                                        child:Icon(
                                         // CupertinoIcons.settings_solid
                                          Icons.settings_outlined,
                                          color: filedcolor,),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: screensize.width * 0.05,
                                            // top: 10,
                                            // bottom: 10
                                            ),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => editprofile(
                                                   
                                                  ),
                                                ));
                                          },
                                          child: Text(
                                            'App settings',
                                            style: TextStyle(
                                                fontFamily: 'Satoshi-Light',
                                                color: filedcolor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14),
                                          ),
                                        ),
                                      ),
                                      //end three rows
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                  height: screensize.height * 0.015,
                ),
                      
                    ],
                  ),
                ),
                 SizedBox(
                  height: screensize.height * 0.011,
                ),
                 Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  margin: EdgeInsets.only(
                      right: screensize.width * 0.042,
                      left: screensize.width * 0.042),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screensize.height*0.023,
                      ),
                      Container(
                        //width: screensize.width * 0.5,
                       // height: 44,
                        margin:EdgeInsets.only(
                         
                     // right: screensize.width * 0.042,
                      left: screensize.width * 0.032),
                     
                        // decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.circular(15)),
                        child: InkWell(
                            onTap: () {
                              print("help");
                            },
                            child: Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                       // left: screensize.width * 0.05,
                                        //top: 10,
                                        //bottom: 10
                                        ),
                                    child: Icon(
                                     
                                 Icons.help_outline_outlined,
                                      color: filedcolor,),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: screensize.width * 0.05,
                                        //top: 10,
                                       // bottom: 10
                                        ),
                                    child: Text(
                                      'Help',
                                      style: TextStyle(
                                          fontFamily: 'Satoshi-Light',
                                          color:filedcolor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      SizedBox(height: screensize.height*0.036,),

                       Container(
                      margin:EdgeInsets.only(left:screensize.width * 0.032),
                  
                    child: InkWell(
                        onTap: () async {
                        

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => initialScreen(),
                              ));
                        },
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    // left: screensize.width * 0.05,
                                    // top: 10,
                                    // bottom: 10
                                    ),
                                child: SvgPicture.asset(
                                'images/logout.svg',
                              ),),
                              Container(
                                margin: EdgeInsets.only(
                                    left: screensize.width * 0.05,
                                    // top: 10,
                                    // bottom: 10
                                    ),
                                child: Text(
                                  'Log out',
                                  style: TextStyle(
                                      fontFamily: 'Satoshi-Light',
                                      color: Color(0xffDC2626),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                        height: screensize.height*0.023,
                      ),
                    ],
                  ),
                ),

                //end Third row
                SizedBox(
                  height: screensize.height * 0.023,
                ),
                
                //end logout
                // SizedBox(
                //   height: screensize.height * 0.019,
                // ),
                Center(
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'Version 1.0',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: splashcolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                  ),
                ),
                Center(
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'DigiRoad, Inc.',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: seconpagecolors,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
