import 'package:ecampus/Row4/screemlock/facelock.dart';
import 'package:ecampus/bottomnavigation/Diccount/Discount.dart';
import 'package:ecampus/color.dart';
import 'package:ecampus/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../Row4/Homemain.dart';

import '../studentpage/ui/widget/button.dart';
import 'LoginMenue.dart';
import 'screemlock/simplelock.dart';

class initialScreen extends StatefulWidget {
  const initialScreen({super.key});

  @override
  State<initialScreen> createState() => _initialScreenState();
}

class _initialScreenState extends State<initialScreen> {
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
                  child: SvgPicture.asset(
                    'images/qrcode.svg',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.1391,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Welcome Back!',
              style: TextStyle(
                  //letterSpacing: 0.006,
                  //fontFamily: 'Satoshi-Variable',
                  color: splashcolor,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Container(
            alignment: Alignment.center,
            height: screensize.height * 0.1059,
            width: screensize.width * 0.229,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: splashcolor),
            child: Center(
              child: Text(
                'JD',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    //fontFamily: 'Satoshi-Variable',
                    color: Color(0xffF9FAFB),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 33),
              ),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.010,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Jane Doe',
              style: TextStyle(
                  //letterSpacing: 0.006,
                  //fontFamily: 'Satoshi-Variable',
                  color: filedcolor,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w800,
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.357,
          ),
          Butn(
            txt: 'Log In with Face ID',
            color: splashcolor,
            btnhight: screensize.height * 0.059,
            fontwiew: FontWeight.w400,
            Size: 16,
            marginbottom: 0.0,
            marginleft: screensize.width * 0.042,
            marginright: screensize.width * 0.042,
            margintop: 0.0,
            btnwidth: screensize.width * 0.91,
            color2: splashcolor,
            pageroute: screenLock(
              footer: Center(
                child: Container(
                  margin: EdgeInsets.only(top: 8),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot your passcode?',
                        style: TextStyle(
                            color: splashcolor,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      )),
                ),
              ),
              onUnlocked: () {
                Get.to(mainpage1());
              },
              cancelButton: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              deleteButton: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              keyPadConfig: KeyPadConfig(
                buttonConfig: KeyPadButtonConfig(
                  backgroundColor: Colors.white,
                  fontSize: 30,
                  foregroundColor: Colors.black,
                  buttonStyle: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    side: BorderSide(color: Colors.white),
                    // shape:  RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(70),
                    //   side: BorderSide(color: Colors.white,width: 4)

                    // ),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              secretsConfig: SecretsConfig(
                spacing: 15, // or spacingRatio
                padding: const EdgeInsets.all(40),
                secretConfig: SecretConfig(
                  borderColor: otbcolor,
                  borderSize: 2.0,
                  disabledColor: otbcolor,
                  enabledColor: splashcolor,
                  size: 17,
                  builder: (context, config, enabled) => Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          enabled ? config.enabledColor : config.disabledColor,
                      border: Border.all(
                        width: config.borderSize,
                        color: config.borderColor,
                      ),
                    ),
                    padding: const EdgeInsets.all(10),
                    width: config.size,
                    height: config.size,
                  ),
                ),
              ),
              title: Container(
                  margin: EdgeInsets.only(bottom: 60),
                  child: Text(
                    'Enter Passcode',
                    style: TextStyle(color: Colors.black),
                  )),
              context: context,
              correctString: '1234',
              config: ScreenLockConfig(
                backgroundColor: Colors.white,
                titleTextStyle: TextStyle(fontSize: 24),
              ),
              customizedButtonChild: GestureDetector(
                  onTap: () {}, child: SvgPicture.asset('images/faceid.svg')),
              customizedButtonTap: () async {},
              onOpened: () async {},
            ),
            //universitycollegeemail(txt: 'Sign up'),
            dosomething: () {},
            colorbtntxt: Colors.white,
            radvalue: 5,
          ),
          SizedBox(
            height: screensize.height * 0.022,
          ),
          Butn(
            txt: 'Log In with identification code', color: splashgragy,
            btnhight: screensize.height * 0.059,
            fontwiew: FontWeight.w400, Size: 16,
            marginbottom: screensize.height * 0.044,
            marginleft: screensize.width * 0.042,
            marginright: screensize.width * 0.042,
            margintop: 0.0,
            btnwidth: screensize.width * 0.91,
            color2: splashgragy,
            pageroute: screenLock(
              footer: Center(
                child: Container(
                  margin: EdgeInsets.only(top: 8),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot your passcode?',
                        style: TextStyle(
                            color: splashcolor,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      )),
                ),
              ),
              onUnlocked: () {
                Get.to(mainpage1());
              },
              cancelButton: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              deleteButton: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              keyPadConfig: KeyPadConfig(
                buttonConfig: KeyPadButtonConfig(
                  backgroundColor: Colors.white,
                  fontSize: 30,
                  foregroundColor: Colors.black,
                  buttonStyle: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    side: BorderSide(color: Colors.white),
                    // shape:  RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(70),
                    //   side: BorderSide(color: Colors.white,width: 4)

                    // ),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              secretsConfig: SecretsConfig(
                spacing: 15, // or spacingRatio
                padding: const EdgeInsets.all(40),
                secretConfig: SecretConfig(
                  borderColor: otbcolor,
                  borderSize: 2.0,
                  disabledColor: otbcolor,
                  enabledColor: splashcolor,
                  size: 17,
                  builder: (context, config, enabled) => Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          enabled ? config.enabledColor : config.disabledColor,
                      border: Border.all(
                        width: config.borderSize,
                        color: config.borderColor,
                      ),
                    ),
                    padding: const EdgeInsets.all(10),
                    width: config.size,
                    height: config.size,
                  ),
                ),
              ),
              title: Container(
                  margin: EdgeInsets.only(bottom: 60),
                  child: Text(
                    'Enter Passcode',
                    style: TextStyle(color: Colors.black),
                  )),
              context: context,
              correctString: '1234',
              config: ScreenLockConfig(
                backgroundColor: Colors.white,
                titleTextStyle: TextStyle(fontSize: 24),
              ),
              // customizedButtonChild: GestureDetector(
              //     onTap: () {}, child: SvgPicture.asset('images/faceid.svg')),
              // customizedButtonTap: () async {},
              // onOpened: () async {},
            ),
            //  universitycollegeemail(txt: 'Log in') ,
            dosomething: () {
              print('next');
            },
            colorbtntxt: Colors.black,
            radvalue: 5,
          )
        ],
      ),
    );
  }
}
