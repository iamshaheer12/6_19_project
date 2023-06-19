
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../color.dart';
import 'Account1.dart';


class secorityandprivacy extends StatefulWidget{
  // List datalst=[];
  // secorityandprivacy({required this.datalst});
  @override
  State<StatefulWidget> createState() {
    return _secorityandprivacystate();
  }
}
class _secorityandprivacystate extends State<secorityandprivacy>{
  // List datalst=[];
  // _secorityandprivacystate({required this.datalst});
  // CollectionReference users = FirebaseFirestore.instance.collection('user');
  // var crnuser=FirebaseAuth.instance.currentUser;
  var docsvalue;
  bool _switchValue = false;
  bool _switchValue2 = false;
  bool _switchValue3 = false;

  bool _switchValue4 = false;
  bool _switchValue5 = false;
  bool _switchValue6 = false;
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
     Row(
       children: [
         Container(
           margin: EdgeInsets.only(left: screensize.width*0.042,top: screensize.height*0.033),
           child:  Align(
             alignment: AlignmentDirectional.topStart,
             child:  Text('Security & Privacy',
               style: TextStyle(
                  // fontFamily: 'Satoshi-Medium',
                   color: filedcolor,
                   fontWeight:FontWeight.w600,
                   fontSize: 28
               ),
             ) ,
           ),
         ),
       ]
     ),
    SizedBox(height: screensize.height*0.035,),
         Container(
           margin: EdgeInsets.only(left:screensize.width*0.042
               
               ),
           child: Align(
             alignment: AlignmentDirectional.topStart,
             child:  Text('Security',
               style: TextStyle(
                   fontFamily: 'Satoshi-Medium',
                   color: filedcolor,
                   fontWeight:FontWeight.w600,
                   fontSize: 14
               ),
             ) ,
           ),
         ),
         //start mamny rows
         SizedBox(height: screensize.height*0.0147,),
         Card(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(15)
           ),
           margin: EdgeInsets.only(right:
           screensize.width*0.042,
               left: screensize.width*0.042),
           elevation: 1,
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only( left: screensize.width * 0.042,
                                            top: screensize.height*0.023,),
                             child: Icon(Icons.password_outlined,color: filedcolor,),
                           ),
                           Container(
                              margin: EdgeInsets.only(left: screensize.width*0.05,
                               top:  screensize.height*0.023,),
                             child:  InkWell(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder:
                                     (context) => Account1(),));
                               },
                               child: Text('Change password',
                                 style:TextStyle(
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
                       //end first row
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only( left: screensize.width * 0.042,   top: screensize.height*0.023, ),
                            
                              child:  Icon(
                                     // Icons.shield_outlined
                                     CupertinoIcons.checkmark_shield,
                                      color: filedcolor,
                            
                                      ),
                                  
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                              top:  screensize.height*0.023,
                                ),
                             child:  InkWell(
                               onTap: (){
                                 Navigator.push(context,
                                     MaterialPageRoute(builder: (context) =>
                               secorityandprivacy(),));
                               },
                               child: Text('Devices',
                                 style:TextStyle(
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
                       //end Second row
                       Row(
                         children: [
                           Container(
  margin: EdgeInsets.only( left: screensize.width * 0.042,
                                            top: screensize.height*0.023,),
                             child: Icon(CupertinoIcons.lock,color: filedcolor,),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                              top:  screensize.height*0.023,
                               ),
                             child:  Text('Privacy',
                               style: TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: filedcolor,
                                   fontWeight:FontWeight.w600,
                                   fontSize: 14
                               ),
                             ),
                           ),
                         ],
                       ),
                       //twice multi rows
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                top: screensize.height*0.023,
                                ),
                             child: 
                             //Icon(CupertinoIcon)
                             Image.asset('images/qr.png'),
                           ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                               width: screensize.width*0.40,
                                margin: EdgeInsets.only(left: screensize.width*0.05,
                             top: screensize.height*0.023,
                                 //top: 10,bottom: 10
                                 ),
                                child:  Text('Face ID',
                                  style:TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color: filedcolor,
                                      fontWeight:FontWeight.w600,
                                      fontSize: 14
                                  ),
                                ),
                              ),
                              //end three rows
                              ///swtch btn1
                              
                              SizedBox(width: screensize.width*0.175,),
                              Container(
                                margin: EdgeInsets.only(
                                     top: screensize.height*0.023,),
                                child: CupertinoSwitch(
                                  value: _switchValue,
                                  onChanged: (value) {
                                    setState(() {
                                      _switchValue = value;
                                    });
                                  },
                                ),
                                //Image.asset('images/switch.png',
                               // ),
                              ),
                            ],
                          )
                         ],
                       ),
                       SizedBox(height: screensize.height*0.020,)
                     ],
                   ),
                 
         ),
         // end first main container

         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************
         SizedBox(height: screensize.height*0.009,),
         Container(
           margin: EdgeInsets.only(left:screensize.width*0.050
               ,top: screensize.height*0.009),
           child: Align(
             alignment: AlignmentDirectional.topStart,
             child:  Text('Marketing',
               style: TextStyle(
                   fontFamily: 'Satoshi-Medium',
                   color: filedcolor,
                   fontWeight:FontWeight.w600,
                   fontSize: 14
               ),
             ) ,
           ),
         ),
         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************
         SizedBox(height:  screensize.height*0.0159,),
         Card(
            color: Colors.white,
           shape: RoundedRectangleBorder(borderRadius:
           BorderRadius.circular(15)),
           margin: EdgeInsets.only(right:
           screensize.width*0.042,
               left: screensize.width*0.042),
           elevation: 1,
           child: Column(
                     children: [
                       //end Second row
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                             top: screensize.height*0.023,
                                 //top: 10,bottom: 10
                                 )
                                 ,
                             child: Image.asset('images/mvc/sitting/xsaxaxas.png'),
                           ),
                           Container(
                            width:screensize.width*0.40 ,
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                             top: screensize.height*0.023,),
                             child:  Text('App notifications',
                               style:TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: filedcolor,
                                   fontWeight:FontWeight.w600,
                                   fontSize: 14
                               ),
                             ),
                           ),
                           //end three rows
                           SizedBox(width: screensize.width*0.175,),
                           Container(
                             margin: EdgeInsets.only(
                                 top: screensize.height*0.023,),
                             ///second btn switch
                             child: CupertinoSwitch(
                               value: _switchValue2,
                               onChanged: (value) {
                                 setState(() {
                                   _switchValue2 = value;
                                 });
                               },
                             ),
                            // Image.asset('images/switch.png',),
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                top: screensize.height*0.023,),
                             child: Image.asset('images/mvc/sitting/Personalized emails.png'),
                           ),
                           Container(
                            width: screensize.width*0.40,
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                              top: screensize.height*0.023,),
                             child:  Text('Personalized emails',
                               style:TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color:filedcolor,
                                   fontWeight:FontWeight.w600,
                                   fontSize: 14
                               ),
                             ),
                           ),

                           //end three rows
                           SizedBox(width: screensize.width*0.175,),
                           Container(
                             margin: EdgeInsets.only(
                                 top: screensize.height*0.023),
                             child:  CupertinoSwitch(
                               value: _switchValue3,
                               onChanged: (value) {
                                 setState(() {
                                   _switchValue3 = value;
                                 });
                               },
                             ),
                           //  Image.asset('images/switch.png',),
                           ),
                         ],
                       ),
                       Container(
                       // width: screensize.width*30,
                         margin: EdgeInsets.only(left:screensize.width*0.16,
                             top: 0,right: screensize.width*0.17),
                         child:  Text('I am happy to receive emails about eCampus products, services and offers that may interest me.',
                           style:TextStyle(
                               fontFamily: 'Satoshi-Medium',
                               color: filedcolor,
                               fontWeight:FontWeight.w500,
                               fontSize: 12
                           ),
                         ),
                       ),
                       //twice multi rows
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: screensize.height*0.023,),
                             child: Image.asset('images/mvc/sitting/Personalized pushes.png',
                             width: 20,height: 20,
                             fit: BoxFit.cover,),
                           ),
                           Container(
                            width: screensize.width*0.45,
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top:  screensize.height*0.023,),
                             child:  Text('Personalized pushes',
                               style:TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: filedcolor,
                                   fontWeight:FontWeight.w600,
                                   fontSize: 14
                               ),
                             ),
                           ),
                           //end three rows
                           SizedBox(width: screensize.width*0.125,),
                           Container(
                             margin: EdgeInsets.only(
                                 top: screensize.height*0.023),
                             child:  CupertinoSwitch(
                               value: _switchValue4,
                               onChanged: (value) {
                                 setState(() {
                                   _switchValue4 = value;
                                 });
                               },
                             ),
                            // Image.asset('images/switch.png',),
                           ),
                         ],
                       ),
                       Container(
                         //width: screensize.width*30,
                         margin: EdgeInsets.only(left:screensize.width*0.16,
                             top: 0,right: screensize.width*0.17),
                         child:  Text('I am happy to see recommendations about eCampus products, services and offers that may interest me.',
                           style:TextStyle(
                               fontFamily: 'Satoshi-Medium',
                               color: filedcolor,
                               fontWeight:FontWeight.w500,
                               fontSize: 12
                           ),
                         ),
                       ),
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: screensize.height*0.023,),
                             child: Image.asset('images/mvc/sitting/star.png',
                               width: 20,height: 20,fit: BoxFit.cover,),
                           ),
                           Container(
                            width: screensize.width*0.40,
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top:screensize.height*0.023 ),
                             child:  Text('Recommendations',
                               style:TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: filedcolor,
                                   fontWeight:FontWeight.w600,
                                   fontSize: 14
                               ),
                             ),
                           ),
                           //end three rows
                           SizedBox(width: screensize.width*0.175,),
                           Container(
                             margin: EdgeInsets.only(
                                 top: screensize.height*0.023),
                             child:  CupertinoSwitch(
                               value: _switchValue5,
                               onChanged: (value) {
                                 setState(() {
                                   _switchValue5 = value;
                                 });
                               },
                             ),
                           //  Image.asset('images/switch.png',),
                           ),
                         ],
                       ),
                       Container(
                        // width: screensize.width*0.50,
                         margin: EdgeInsets.only(left:screensize.width*0.16,
                             top: 0,right: screensize.width*0.17),
                         child:  Text('I am happy to see recommendations about eCampus products, services and offers that may interest me.',
                           style: TextStyle(
                               fontFamily: 'Satoshi-Medium',
                               color: filedcolor,
                               fontWeight:FontWeight.w500,
                               fontSize: 12
                           ),
                         ),
                       ),
                       SizedBox(height: screensize.height*0.023,)
                     ],
                   ),
                
         ),
         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************


         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************
         SizedBox(height: screensize.height*0.0350,),
         Container(
           margin: EdgeInsets.only(left:screensize.width*0.074
               ,top: screensize.height*0.009),
           child: Align(
             alignment: AlignmentDirectional.topStart,
             child:  Text('Promotions',
               style:TextStyle(
                   fontFamily: 'Satoshi-Medium',
                   color: filedcolor,
                   fontWeight:FontWeight.w600,
                   fontSize: 14
               ),
             ) ,
           ),
         ),
      SizedBox(height: screensize.height*0.0159,),
         Card(
           color: Colors.white,
           margin: EdgeInsets.only(right:
           screensize.width*0.042,
               left: screensize.width*0.042),
           elevation: 1,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(15)
           ),
           child:  Column(
                     children: [
                       //end Second row
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: screensize.height*0.023,),
                             child: Image.asset('images/mvc/sitting/Third party promotions.png',
                             height: 20,
                             width: 20,
                             fit: BoxFit.cover,
                             ),
                           ),
                           Container(
                            width: screensize.width*0.50,
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: screensize.height*0.023,),
                             child:  Text('Third party promotions',
                               style:TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: filedcolor,
                                   fontWeight:FontWeight.w600,
                                   fontSize: 14
                               ),
                             ),
                           ),
                           //end three rows
                           SizedBox(width: screensize.width*0.075,),
                           Container(
                             margin: EdgeInsets.only(
                                 top: screensize.height*0.023),
                             child:  CupertinoSwitch(
                               value: _switchValue6,
                               onChanged: (value) {
                                 setState(() {
                                   _switchValue6 = value;
                                 });
                               },
                             ),
                             //Image.asset('images/switch.png',),
                           ),
                         ],
                       ),
                       Container(
                         margin: EdgeInsets.only(left:screensize.width*0.16,
                             top: 0,right: screensize.width*0.17),
                         child:  Text('I want to receive email and push notifications from eCampus about third-party promotions. eCampus does not share any personal information with our promotion providers.',
                           style:TextStyle(
                               fontFamily: 'Satoshi-Medium',
                               color:filedcolor,
                               fontWeight:FontWeight.w500,
                               fontSize: 12
                           ),
                         ),
                       ),
                       SizedBox(height: screensize.height*0.023,)
                       //twice multi rows
                     ],
                   ),
                
         ),
         SizedBox(height: 25,)
         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************

         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************


         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************
       ],
     ),
   );
  }
}