import 'dart:async';
import 'package:ecampus/myMainpage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:passcode_screen/keyboard.dart';

import '../../../color.dart';

import 'package:flutter/material.dart';
import 'package:passcode_screen/circle.dart';

import 'package:passcode_screen/passcode_screen.dart';

import '../mainpage.dart';


class email_5 extends StatefulWidget {
  const email_5({super.key});

  @override
  State<email_5> createState() => _email_5State();
}

class _email_5State extends State<email_5> {
  final StreamController<bool> _verificationNotifier =
      StreamController<bool>.broadcast();

  _onPasscodeEntered(String enteredPasscode) {
    bool isValid = '123456' == '123456';
    _verificationNotifier.add(isValid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.077,
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('images/mvc/coloredbackarrow.png')),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.005,
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.80,
              child: PasscodeScreen(
               
                passwordDigits: 4,
                isValidCallback: () async {
                 Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mainpage1(),
                          ));
                },
                backgroundColor: Colors.white,
                circleUIConfig: CircleUIConfig(
                    borderColor: otbcolor, fillColor: otbcolor, circleSize: 24),
                keyboardUIConfig: KeyboardUIConfig(
                  keyboardRowMargin: EdgeInsets.only(left: 4,right: 4,top: 40),
                    digitTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w700)),
                title: Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(bottom:40),
                  child: Text(
                    'Enter Passcode',
                    style: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: filedcolor,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 26),
                  ),
                ),
                passwordEnteredCallback: _onPasscodeEntered,
                cancelButton: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                deleteButton: Text('Delete'),
                shouldTriggerVerification: _verificationNotifier.stream,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Center(
              child: Container(
                //height:  MediaQuery.of(context).size.height * 0.05,
                child: TextButton(
                  child: Text(
                    'Forgot Passcode?',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Variable',
                        color: splashcolor,
                        //fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.044,
            // ),
          ],
        ),
      ),
    );
  }
}
