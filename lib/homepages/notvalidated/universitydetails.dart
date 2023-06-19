import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../../../color.dart';
import '../../../mainpage.dart';
class universitydetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _universitydetailsstate();
  }}
class _universitydetailsstate extends State<universitydetails>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   return Scaffold(
     body: ListView(
       children: [
          Container(
           alignment: AlignmentDirectional.topStart,
           margin: EdgeInsets.only(left: screensize.width * 0.037, top: screensize.height*0.071),
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
                 child:  Text('University details',
                   style:TextStyle(
                       fontFamily: 'Satoshi-Medium',
                       color: filedcolor,
                       fontWeight:FontWeight.w600,
                       fontSize: 28
                   ),
                 ) ,
               ),
             ),
           ],
         ),
         SizedBox(height: screensize.height*0.009,),
         Container(
           margin: EdgeInsets.only(left:screensize.width*0.025
               ,top: screensize.height*0.009),
           child: Align(
             alignment: AlignmentDirectional.topStart,
             child:  Text('Personal information',
               style: TextStyle(
                   fontFamily: 'Satoshi-Medium',
                   color: Colors.black,
                   fontWeight:FontWeight.w400,
                   fontSize: 12
               ),
             ) ,
           ),
         ),
         //start first one
         SizedBox(height: screensize.height*0.009,),
         Container(
           width: screensize.width*0.5,
           height: 64,
           margin: EdgeInsets.only(right: screensize.width*0.05,left: screensize.width*0.05),
           decoration: BoxDecoration(
               color: splashgragy
           ),
           child:InkWell(onTap: (){
             print("university");
           },
               child: Align(
                 alignment: AlignmentDirectional.topStart,
                 child: Container(
                     margin: EdgeInsets.only(left: screensize.width*0.08,
                         top: 10,bottom: 10),
                     child: Column(
                       children: [
                         Align(
                           alignment: AlignmentDirectional.topStart,
                           child: Text('University',
                             style:TextStyle(
                                 fontFamily: 'Satoshi-Medium',
                                 color: textlightcolor,
                                 fontWeight:FontWeight.w400,
                                 fontSize: 12
                             ),
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Align(
                               alignment: AlignmentDirectional.topStart,
                               child: Text('University Selection',
                                 style: TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: Colors.black,
                                     fontWeight:FontWeight.w400,
                                     fontSize: 12
                                 ),
                               ),
                             ),
                             Container(
                               child: Image.asset('images/genderarrow.png'),
                             )
                           ],
                         )
                       ],
                     )
                 ),
               )),
         ),
         //end first one

         //start second one
         SizedBox(height: screensize.height*0.009,),
         Container(
           width: screensize.width*0.5,
           height: 64,
           margin: EdgeInsets.only(right: screensize.width*0.05,left: screensize.width*0.05),
           decoration: BoxDecoration(
               color: splashgragy
           ),
           child:InkWell(onTap: (){
             print("Gender");
           },
               child: Align(
                 alignment: AlignmentDirectional.topStart,
                 child: Container(
                     margin: EdgeInsets.only(left: screensize.width*0.08,
                         top: 10,bottom: 10),
                     child: Column(
                       children: [
                         Align(
                           alignment: AlignmentDirectional.topStart,
                           child: Text('University',
                             style:TextStyle(
                                 fontFamily: 'Satoshi-Medium',
                                 color: textlightcolor,
                                 fontWeight:FontWeight.w400,
                                 fontSize: 12
                             ),
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Align(
                               alignment: AlignmentDirectional.topStart,
                               child: Text('University Selection',
                                 style:TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: Colors.black,
                                     fontWeight:FontWeight.w400,
                                     fontSize: 12
                                 ),
                               ),
                             ),
                             Container(
                               child: Image.asset('images/genderarrow.png'),
                             )
                           ],
                         )
                       ],
                     )
                 ),
               )),
         ),
         //end second one
         //start third one
         SizedBox(height: screensize.height*0.009,),
         Container(
           width: screensize.width*0.5,
           height: 64,
           margin: EdgeInsets.only(right: screensize.width*0.05,left: screensize.width*0.05),
           decoration: BoxDecoration(
               color: splashgragy
           ),
           child:InkWell(onTap: (){
             print("Gender");
           },
               child: Align(
                 alignment: AlignmentDirectional.topStart,
                 child: Container(
                     margin: EdgeInsets.only(left: screensize.width*0.08,
                         top: 10,bottom: 10),
                     child: Column(
                       children: [
                         Align(
                           alignment: AlignmentDirectional.topStart,
                           child: Text('Student number',
                             style: TextStyle(
                                 fontFamily: 'Satoshi-Medium',
                                 color: textlightcolor,
                                 fontWeight:FontWeight.w400,
                                 fontSize: 12
                             ),
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Align(
                               alignment: AlignmentDirectional.topStart,
                               child: Text('123456789',
                                 style:TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: Colors.black,
                                     fontWeight:FontWeight.w400,
                                     fontSize: 12
                                 ),
                               ),
                             ),
                           ],
                         )
                       ],
                     )
                 ),
               )),
         ),
        //end third one

         //start fourth one
         SizedBox(height: screensize.height*0.009,),
         Container(
           width: screensize.width*0.5,
           height: 64,
           margin: EdgeInsets.only(right: screensize.width*0.05,
               left: screensize.width*0.05),
           decoration: BoxDecoration(
               color: splashgragy
           ),
           child:InkWell(onTap: (){
             print("Gender");
           },
               child: Align(
                 alignment: AlignmentDirectional.topStart,
                 child: Container(
                     margin: EdgeInsets.only(left: screensize.width*0.08,
                         top: 10,bottom: 10),
                     child: Column(
                       children: [
                         Align(
                           alignment: AlignmentDirectional.topStart,
                           child: Text('Programme',
                             style:TextStyle(
                                 fontFamily: 'Satoshi-Medium',
                                 color: textlightcolor,
                                 fontWeight:FontWeight.w400,
                                 fontSize: 12
                             ),
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Align(
                               alignment: AlignmentDirectional.topStart,
                               child: Text('Select Programme being studied',
                                 style:TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: Colors.black,
                                     fontWeight:FontWeight.w400,
                                     fontSize: 12
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(right: 7),
                               child: Image.asset('images/calcal.png'),
                             )
                           ],
                         )
                       ],
                     )
                 ),
               )),
         ),
         //start last one
         SizedBox(height: screensize.height*0.009,),
         Container(
           width: screensize.width*0.5,
           height: 64,
           margin: EdgeInsets.only(right: screensize.width*0.05,left: screensize.width*0.05),
           decoration: BoxDecoration(
               color: splashgragy
           ),
           child:InkWell(onTap: (){
             print("calcal.png");
           },
               child: Align(
                 alignment: AlignmentDirectional.topStart,
                 child: Container(
                     margin: EdgeInsets.only(left: screensize.width*0.08,
                         top: 10,bottom: 10),
                     child: Column(
                       children: [
                         Align(
                           alignment: AlignmentDirectional.topStart,
                           child: Text('Expected end of studies',
                             style:TextStyle(
                                 fontFamily: 'Satoshi-Medium',
                                 color: textlightcolor,
                                 fontWeight:FontWeight.w400,
                                 fontSize: 12
                             ),
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Align(
                               alignment: AlignmentDirectional.topStart,
                               child: Text('29 October 2024',
                                 style:TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: Colors.black,
                                     fontWeight:FontWeight.w400,
                                     fontSize: 12
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(right: 7),
                               child: Image.asset('images/calcal.png'),
                             )
                           ],
                         )
                       ],
                     )
                 ),
               )),
         ),
         //end last one
       ],
     ),
     bottomNavigationBar:  Container(
       decoration: BoxDecoration(
           border: Border.symmetric(horizontal: BorderSide(width: 1,color: Colors.black))
       ),
       child: Padding(
         padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
         child: GNav(
           color: Colors.white,
           activeColor: Colors.grey.shade400,
           padding: EdgeInsets.all(10),
           hoverColor: Colors.grey.shade500,
           style: GnavStyle.google,
           gap: 8,
           onTabChange: (index){
             setState(() {
             });
           },
           tabs: [
             GButton(
               text: 'Home',
               icon: FontAwesomeIcons.house,iconColor: Colors.black,
               onPressed:(){

               },
             ),
             GButton(
               text: 'Deals',
               icon: FontAwesomeIcons.tag,iconColor: Colors.black,
               onPressed:bas,
             ),
             GButton(
                 onPressed:bas,
                 text: 'Inbox',
                 icon: FontAwesomeIcons.paperPlane,iconColor: Colors.black),
             GButton(
                 onPressed:bas,
                 text: 'Notifications',
                 icon: FontAwesomeIcons.bell,iconColor: Colors.black),
             GButton(
                 onPressed:bas,
                 text: 'Menu',
                 semanticLabel: Navigator.defaultRouteName,
                 icon: FontAwesomeIcons.bars,iconColor: Colors.black),
           ],

         ),
       ),
     ),
   );
  }
void bas(){
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => mainpage1(),));
}
}