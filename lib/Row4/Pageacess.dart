import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Pageacess extends StatefulWidget {
  const Pageacess({super.key});

  @override
  State<Pageacess> createState() => _PageacessState();
}

class _PageacessState extends State<Pageacess> {
  Widget getpost(String name, String post) {
        var screensize = MediaQuery.of(context).size;

    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.only(left: screensize.width*0.042,),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('images/bg.png'))
                  ), ),
                                              SizedBox(width: 5,),

                  Container(
                              width: screensize.width*0.61,
                              alignment: Alignment.topLeft,
                           //   margin: EdgeInsets.only(top: ),
                              child:  Text(
                      name,
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: Color(0xff090A0A),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                                    ),
                            ),
                               SizedBox(width: screensize.width*0.053,),
                     GestureDetector(
                      onTap: (){},
                       child: Container(
                        alignment: AlignmentDirectional.topStart,
                        child: SvgPicture.asset('images/menuecircle.svg'),
                       ),
                     )
              ],
            ),
             Container(
                               // width: screensize.width*0.61,
                              alignment: Alignment.topLeft,

                              margin: EdgeInsets.only(top: 4,
                             // right: screensize.width*0.20
                              ),
                              child:  Text(
                          post,
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: Color(0xff808C91),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                                    ),
                            ),
          ],
        ),
        
        //  SizedBox(width: 4,),
        //    Column(
        //                 mainAxisAlignment: MainAxisAlignment.start,
        //                 children: [
        //                     Container(
        //                       width: screensize.width*0.61,
        //                       alignment: Alignment.topLeft,
        //                    //   margin: EdgeInsets.only(top: ),
        //                       child:  Text(
        //               name,
        //               style: TextStyle(
        //                   //letterSpacing: 0.006,
        //                   //fontFamily: 'Satoshi-Variable',
        //                   color: Color(0xff090A0A),
        //                   fontStyle: FontStyle.normal,
        //                   fontWeight: FontWeight.w700,
        //                   fontSize: 14),
        //                             ),
        //                     ),
        //                     GestureDetector(
        //               onTap: (){},
        //                child: Container(
        //                 alignment: AlignmentDirectional.topStart,
        //                 child: SvgPicture.asset('images/menuecircle.svg'),
        //                ),
        //              ),
                       
        //                 ],
        //               ),
                    
      ],
    );
  }

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
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: screensize.width * 0.042,),
                  child: Icon(
                    Icons.arrow_back,
                    color: splashcolor,
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.2453,
              ),
              Text(
                'Page acess',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    //fontFamily: 'Satoshi-Variable',
                    color: Color(0xff15141F),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
              SizedBox(
                width: screensize.width * 0.26,
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.info,
                  color: filedcolor,
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.02463,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                alignment: Alignment.topLeft,
                child: Text(
                  'People with acess',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: Color(0xff050C0E),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.34,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  // margin: EdgeInsets.only(left: screensize.width * 0.042),
                  //alignment: Alignment.topLeft,
                  child: Text(
                    'Add new',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        //fontFamily: 'Satoshi-Variable',
                        color: splashcolor,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8,),
          getpost('Student full name', 'Content, Message, Community\n activity, Ads, Insights,\n Permissions, Page deletion '),
          SizedBox(height: screensize.height*0.009,),
          getpost('Student full name', 'Content, Message, Community \n activity, Ads, Insights, \n Permissions, Page deletion '),
          SizedBox(height: screensize.height*0.009,),
          getpost('Student full name', 'Content, Message, Community \n activity, Ads, Insights, \n Permissions, Page deletion '),
          SizedBox(height: screensize.height*0.009,),
          getpost('Student full name', 'Content, Message, Community\n activity, Ads, Insights,\n Permissions, Page deletion '),
          SizedBox(height: screensize.height*0.024,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                alignment: Alignment.topLeft,
                child: Text(
                  'People with acess',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: Color(0xff050C0E),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.34,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  // margin: EdgeInsets.only(left: screensize.width * 0.042),
                  //alignment: Alignment.topLeft,
                  child: Text(
                    'Add new',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        //fontFamily: 'Satoshi-Variable',
                        color: splashcolor,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
            SizedBox(height: screensize.height*0.01847,),
          getpost('Student full name', 'Insights                     '),


        ],
      ),
    );
  }
}
