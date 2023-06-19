import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../studentpage/ui/widget/chatwidget.dart';
import '../studentpage/ui/widget/clubsociet.dart';
import 'ClubSocieties.dart';
class Societies extends StatefulWidget {


  @override
  State<Societies> createState() => _ClubSocietiesState();
}

class _ClubSocietiesState extends State<Societies> {
    int topbarselection = 2;

  @override
  Widget build(BuildContext context) {
     var screensize = MediaQuery.of(context).size;
    return  Scaffold(
      body: ListView(
        children: [
           SizedBox(
            height: screensize.height * 0.030,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: Text(
                  'Club & Societies',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: filedcolor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 28),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.060,
              ),
              Container(
                margin: EdgeInsets.only(top:8),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: splashcolor,
                      size: 27,
                    )),
              ),
               Container(
                margin: EdgeInsets.only(top:8,),
                child: SvgPicture.asset(
                        'images/filter.svg',
                      ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.022,
          ),
           Container(
            width: screensize.width,
            height: 50,
            margin: EdgeInsets.only(right: screensize.width*0.042, left: screensize.width*0.042),
            decoration: BoxDecoration(
                // border: Border.all(width: 1),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: otbcolor),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      topbarselection = 1;
                    });

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ClubSocieties(),
                        ));
                  },
                  child: Container(
                    width: screensize.width * 0.45,
                    height: 50,
                    margin: EdgeInsets.only(right: 2, left: 0),
                    decoration: BoxDecoration(
                        border: topbarselection == 1
                            ? Border.all(width: 1)
                            : Border.all(width: 0, color: otbcolor),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: topbarselection == 1 ? Colors.white : otbcolor),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Societies',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      topbarselection = 2;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Societies(),
                          ));
                      topbarselection = 2;
                    });
                  },
                  child: Container(
                    width: screensize.width * 0.45,
                    height: 50,
                    margin: EdgeInsets.only(right: 0, left: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: topbarselection == 2 ? Colors.white : otbcolor,
                      border: topbarselection == 2
                          ? Border.all(width: 1)
                          : Border.all(width: 0, color: otbcolor),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Clubs',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
           Card(
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.only(left:screensize.width*0.042 , right: screensize.width*0.042,top:screensize.height*0.042 ),
            child: Container(
              width: screensize.width,
              margin: EdgeInsets.only(left: screensize.width*0.042, right: screensize.width*0.042, top: screensize.height*0.018, bottom: screensize.height*0.018),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.1,
                  color: Colors.white60,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                   litchatbuild1(
                      text: '',
                      imgtxt: '',
                      pageroute:(){},
                      text2: 'Name goes here',
                    ),
                    Divider(
                     height: screensize.height*0.018,
                    ),
                    litchatbuild1(
                      text: '',
                      imgtxt: '',
                      pageroute:(){},
                      text2: 'Name goes here',
                    ),
                   Divider(
                     height: screensize.height*0.018,
                    ),
                   litchatbuild1(
                      text: '',
                      imgtxt: '',
                      pageroute: (){},
                      text2: 'Name goes here',
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    ///***********************************************
                  ],
                ),
              ),
            ),
          )



        ],
      ),
    );
  }
}