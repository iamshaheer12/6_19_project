
import 'package:flutter/material.dart';
import '../color.dart';
import '../studentpage/ui/widget/button.dart';
import 'SignUpPages/email-2.dart';
import 'loginpages/Logecampus.dart';

class welcometoecampus extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _welcometoecampusstate();
  }
}

class _welcometoecampusstate extends State<welcometoecampus> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (context, contraints) {
      final screenWidth = contraints.maxWidth;
      final screenHeight = contraints.maxHeight;
      return SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.054,
            ),
            Container(
              // height: screensize.height*0.10,
              margin: EdgeInsets.only(
                  left: screenWidth * 0.042,
                  right: screenWidth* 0.042),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        //height: screenHeight*0.050,
                        width: screenWidth*0.91,
                        // margin: EdgeInsets.only(left: screenWidth * 0.042,
                        // //right: screenWidth * 0.042
                        // ),
                        child:  Text(
                            'Welcome to',
                            style: TextStyle(
                              //letterSpacing: 0.006,
                                //fontFamily: 'Satoshi-Variable',
                                color: splashcolor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize: 28),
                          ),
                        
                      ),
                    ],
                  ),
                  Container(
                    // height: screenHeight*0.050,
                    width: screenWidth*0.91,
                    // margin: EdgeInsets.only(left:screenWidth * 0.010,right: screenWidth * 0.042),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        'eCampus            ',
                        style: TextStyle(
                           // fontFamily: 'Satoshi-Variable',
                            color: splashcolor,
                            fontWeight: FontWeight.w600,
                            fontSize: 28),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.11,
            ),
            Center(
                child: Container(
                  height: screenHeight*0.461,

              width: screenHeight*1,
              child: Image.asset('images/mvc/ffffff.png'),
            )),
            SizedBox(
              height: screenHeight * 0.084,
            ),
            Butn(
              txt: 'Sign up',
              color: splashcolor,
              btnhight: screenHeight * 0.059,
              fontwiew: FontWeight.w400,
              Size: 16,
              marginbottom: 0.0,
              marginleft: screenWidth* 0.042,
              marginright: screenWidth* 0.042,
              margintop: 0.0,
              btnwidth: screenWidth* 0.91,
              color2: splashcolor,
              pageroute: universitycollegeemail(txt: '',),
              dosomething: () {},
              colorbtntxt: Colors.white,
              radvalue: 5,
            ),
            SizedBox(
              height: screenHeight * 0.022,
            ),
            Butn(
              txt: 'Log in', color: splashgragy,
              btnhight:  screenHeight * 0.059,
              fontwiew: FontWeight.w400, Size: 16,
              marginbottom: screenHeight * 0.044,
              marginleft: screenWidth* 0.042,
              marginright: screenWidth* 0.042,
              margintop: 0.0,
              btnwidth: screenWidth* 0.91,
              color2: splashgragy,
              pageroute: Logecampus(),
            
              dosomething: () {
                print('next');
              },
              colorbtntxt: Colors.black,
              radvalue: 5,
            )
          ],
        ),
      );
    }));
  }
}
