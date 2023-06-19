import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LinkedAccount extends StatefulWidget {
  const LinkedAccount({super.key});

  @override
  State<LinkedAccount> createState() => _LinkedAccountState();
}

class _LinkedAccountState extends State<LinkedAccount> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.029,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Icon(
                  Icons.arrow_back,
                  color: splashcolor,
                ),
              ),
            ),
          ]),
          SizedBox(height: screensize.height*0.0245,),
           Row(mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Container(
                margin: EdgeInsets.only(left: screensize.width*0.042),

                   alignment: Alignment.topLeft,
                    child: Text(
                      'Linked Accounts',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: Color(0xff0C212C),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 28),
                    ),
                  ),
             ],
           ),
       SizedBox(height: screensize.height*0.02215,),
        GestureDetector(
          onTap: (){},
          child: Card(
                 
                 shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
                margin: EdgeInsets.only(
                    right: screensize.width * 0.042,
                    left: screensize.width * 0.042),
                elevation: 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: screensize.width*0.12,
                      margin: EdgeInsets.only(right: screensize.width*0.030,
                        left:screensize.width*0.0293 ,top: screensize.height*0.022,bottom:  screensize.height*0.022,),
                    child: SvgPicture.asset('images/instagram.svg'),
        
                    ),
                    
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                            Container(
                              width: screensize.width*0.48,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: screensize.height*0.017),
                              child:  Text(
                      'Instagram  ',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: Color(0xff050C0E),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                                    ),
                            ),
                              Container(
                                width: screensize.width*0.48,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(bottom: screensize.height*0.0135,),
                              child:  Text(
                           'Not connected',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: Color(0xff808C91),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                                    ),
                            ),
                        ],
                      ),
                      SizedBox(width: screensize.width*0.12,),
                      Center(child: IconButton(onPressed: (){},
                      icon:Icon( Icons.arrow_forward_ios,color: splashcolor,)))
                  
        
                  ],
                ),
               ),
        ),
        SizedBox(height: screensize.height*0.023,),
        GestureDetector(
          onTap: (){},
          child: Card(
                 
                 shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
                margin: EdgeInsets.only(
                    right: screensize.width * 0.042,
                    left: screensize.width * 0.042),
                elevation: 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                                            width: screensize.width*0.12,

                      margin: EdgeInsets.only(right: screensize.width*0.030,
                        left:screensize.width*0.0293 ,top: screensize.height*0.022,bottom:  screensize.height*0.022,),
                    child: SvgPicture.asset('images/linkdin.svg'),
        
                    ),
                    
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                            Container(
                              width: screensize.width*0.48,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: screensize.height*0.017),
                              child:  Text(
                      'Linkedin',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: Color(0xff050C0E),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                                    ),
                            ),
                              Container(
                                width: screensize.width*0.48,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(bottom: screensize.height*0.0135,),
                              child:  Text(
                           'Not connected',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: Color(0xff808C91),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                                    ),
                            ),
                        ],
                      ),
                      SizedBox(width: screensize.width*0.12,),
                      Center(child: IconButton(onPressed: (){},
                      icon:Icon( Icons.arrow_forward_ios,color: splashcolor,)))
                  
        
                  ],
                ),
               ),
        ),
          SizedBox(height: screensize.height*0.023,),
        GestureDetector(
          onTap: (){},
          child: Card(
                 
                 shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
                margin: EdgeInsets.only(
                    right: screensize.width * 0.042,
                    left: screensize.width * 0.042),
                elevation: 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                     width: screensize.width*0.12,

                      margin: EdgeInsets.only(right: screensize.width*0.030,
                        left:screensize.width*0.0293 ,top: screensize.height*0.022,bottom:  screensize.height*0.022,),
                    child: SvgPicture.asset('images/Twiter.svg'),
        
                    ),
                    
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                            Container(
                              width: screensize.width*0.48,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: screensize.height*0.017),
                              child:  Text(
                      'Twitter',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: Color(0xff050C0E),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                                    ),
                            ),
                              Container(
                                width: screensize.width*0.48,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(bottom: screensize.height*0.0135,),
                              child:  Text(
                           'Not connected',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: Color(0xff808C91),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                                    ),
                            ),
                        ],
                      ),
                      SizedBox(width: screensize.width*0.12,),
                      Center(child: IconButton(onPressed: (){},
                      icon:Icon( Icons.arrow_forward_ios,color: splashcolor,)))
                  
        
                  ],
                ),
               ),
        ),
          SizedBox(height: screensize.height*0.023,),
        GestureDetector(
          onTap: (){},
          child: Card(
                 
                 shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
                margin: EdgeInsets.only(
                    right: screensize.width * 0.042,
                    left: screensize.width * 0.042),
                elevation: 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                                            width: screensize.width*0.12,

                      margin: EdgeInsets.only(right: screensize.width*0.030,
                        left:screensize.width*0.0293 ,top: screensize.height*0.022,bottom:  screensize.height*0.022,),
                    child: SvgPicture.asset('images/facebook.svg'),
        
                    ),
                    
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                            Container(
                              width: screensize.width*0.48,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: screensize.height*0.017),
                              child:  Text(
                      'Facebook',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: Color(0xff050C0E),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                                    ),
                            ),
                              Container(
                                width: screensize.width*0.48,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(bottom: screensize.height*0.0135,),
                              child:  Text(
                           'Not connected',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: Color(0xff808C91),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                                    ),
                            ),
                        ],
                      ),
                      SizedBox(width: screensize.width*0.12,),
                      Center(child: IconButton(onPressed: (){},
                      icon:Icon( Icons.arrow_forward_ios,color: splashcolor,)))
                  
        
                  ],
                ),
               ),
        ),



        ],
      ),
    );
  }
}
