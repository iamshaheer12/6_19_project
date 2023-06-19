import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../color.dart';

import '../../mainpage.dart';
import 'editprofile.dart';
import 'notvalidated/universityD.dart';
class Account1 extends StatefulWidget {
  const Account1({super.key});

  @override
  State<Account1> createState() => _Account1State();
}

class _Account1State extends State<Account1> {
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: profilebackgroudcolors,
      body: ListView(
        children: [
           Container(
           alignment: AlignmentDirectional.topStart,
           margin: EdgeInsets.only(left: screensize.width * 0.037, top: screensize.height*0.029),
           child: InkWell(
               onTap: (){
                 Navigator.pop(context);
               },
               child: Image.asset('images/mvc/coloredbackarrow.png')),
         ),
         SizedBox(height: screensize.height*0.033,),
         Row(
           children: [
             Container(
               margin: EdgeInsets.only(left: screensize.width*0.042),
               child:  Align(
                 alignment: AlignmentDirectional.topStart,
                 child:  Text('Account',
                   style: TextStyle(
                      // fontFamily: 'Satoshi-Medium',
                       color: filedcolor,
                       fontWeight:FontWeight.w600,
                       fontSize: 28
                   ),
                 ) ,
               ),
             ),
           ],
         ),
          SizedBox(height: screensize.height*0.038,),
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
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(  left: screensize.width * 0.042,
                                            top: screensize.height*0.023,),
                             child: Icon(CupertinoIcons.person,color: filedcolor,),
                           
                             ),
                           
                          // SizedBox(width: 2,),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                              top:  screensize.height*0.023,
                                 //top: 10,bottom: 10
                                 ),
                             child:  InkWell(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(
                                   builder: (context) => editprofile(
                                    
                                   ),));
                               },
                               child: Text('Personal details',
                                 style: TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: filedcolor,
                                     fontWeight:FontWeight.w600,
                                     fontSize: 14
                                 ),
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
                             margin: EdgeInsets.only(  left: screensize.width * 0.042,
                                            top: screensize.height*0.023,),
                             child:  Image.asset('images/edu.png',
                             height: 20,
                             width: 20,
                             fit: BoxFit.cover,
                             )
                             
                           
                             ),
                           
                          // SizedBox(width: 2,),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                              top:  screensize.height*0.023,
                                 //top: 10,bottom: 10
                                 ),
                             child:  InkWell(
                               onTap: (){
                                Navigator.push(context,
                                   MaterialPageRoute(builder: (context) =>
                                       UnicersityD(),));
                               },
                               child: Text('University Detail',
                                 style: TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: filedcolor,
                                     fontWeight:FontWeight.w600,
                                     fontSize: 14
                                 ),
                               ),
                             ),
                           ),
                            Container(
                                            // height: 18,
                                            // width: 68,
                                            margin: EdgeInsets.only(
                                                right: screensize.width *0.012,
                                                left: screensize.width * 0.10,
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

                       ),
                        SizedBox(
                  height: screensize.height * 0.011,
                ),
                        Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(  left: screensize.width * 0.042,
                                            top: screensize.height*0.023,),
                             child: Icon(CupertinoIcons.person_3,color: filedcolor,),
                           
                             ),
                           
                          // SizedBox(width: 2,),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                              top:  screensize.height*0.023,
                                 //top: 10,bottom: 10
                                 ),
                             child:  InkWell(
                               onTap: (){
                                //  Navigator.push(context, MaterialPageRoute(
                                //    builder: (context) => editprofile(
                                    
                                //    ),));
                               },
                               child: Text('Club & Societies',
                                 style: TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: filedcolor,
                                     fontWeight:FontWeight.w600,
                                     fontSize: 14
                                 ),
                               ),
                             ),
                           ),
                         ],

                       ),
                       SizedBox(
                  height: screensize.height * 0.020,
                ),

        ]
                  ),
          ),
          SizedBox(height: screensize.height*0.024,),
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
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(  left: screensize.width * 0.042,
                                            top: screensize.height*0.023,),
                             child: Image.asset('images/docu.png',
                             height: 20,
                             width: 20,fit: BoxFit.cover,
                             )
                             //Icon(CupertinoIcons.doc_text_fill,color: filedcolor,),
                           
                             ),
                           
                          // SizedBox(width: 2,),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                              top:  screensize.height*0.023,
                                 //top: 10,bottom: 10
                                 ),
                             child:  InkWell(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder:
                                     (context) => Account1(),));
                               },
                               child: Text('Documents',
                                 style: TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: filedcolor,
                                     fontWeight:FontWeight.w600,
                                     fontSize: 14
                                 ),
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
                             margin: EdgeInsets.only(  left: screensize.width * 0.042,
                                            top: screensize.height*0.023,),
                            child: 
                                    Icon(
                                     // Icons.shield_outlined
                                     CupertinoIcons.checkmark_shield,
                                      color: filedcolor,
                                      ),
                                
                            //  child: Icon(
                            //   ,
                            //   color: filedcolor,
                            //  )
                           
                             ),
                           
                          // SizedBox(width: 2,),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 //top: 10,bottom: 10
                                  top:  screensize.height*0.023,
                                 ),
                             child:  InkWell(
                               onTap: (){
                                
                               },
                               child: Text('Privacy policy',
                                 style: TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: filedcolor,
                                     fontWeight:FontWeight.w600,
                                     fontSize: 14
                                 ),
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
                             margin: EdgeInsets.only(  left: screensize.width * 0.042,
                                            top: screensize.height*0.023,),
                             child: Icon(Icons.info_outline,color: filedcolor,),
                           
                             ),
                           
                          // SizedBox(width: 2,),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                              top:  screensize.height*0.023,
                                 //top: 10,bottom: 10
                                 ),
                             child:  InkWell(
                               onTap: (){
                                //  Navigator.push(context, MaterialPageRoute(
                                //    builder: (context) => editprofile(
                                    
                                //    ),));
                               },
                               child: Text('Terms & conditons',
                                 style: TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: filedcolor,
                                     fontWeight:FontWeight.w600,
                                     fontSize: 14
                                 ),
                               ),
                             ),
                           ),
                         ],

                       ),
                       SizedBox(
                  height: screensize.height * 0.020,
                ),

        ]
                  ),
          ),
          SizedBox(height: screensize.height*0.014,),
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
                      Row(
                        children: [
                            Container(
                             margin: EdgeInsets.only(  left: screensize.width * 0.042,
                                            top: screensize.height*0.023,),
                             child:Image.asset('images/mvc/sitting/profilexicon.png',height:20 ,
                             fit: BoxFit.cover,
                           width: 20,),
                           
                             ),
                               Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                             top:  screensize.height*0.023,
                                 //top: 10,bottom: 10
                                 ),
                             child:  InkWell(
                               onTap: (){
                                //  Navigator.push(context, MaterialPageRoute(
                                //    builder: (context) => editprofile(
                                    
                                //    ),));
                               },
                               child: Text('Close account',
                                 style: TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: Color(0xffDC2626),
                                     fontWeight:FontWeight.w600,
                                     fontSize: 14
                                 ),
                               ),
                             ),
                           ),

                        ],
                        
                      )
                      ,
                      SizedBox( height: screensize.height * 0.020,)
                    ],
                  ),
          )
        ],
      ),
    );
  }
}