import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../color.dart';
import 'VerificationPending.dart';

class Progress1 extends StatefulWidget {
  

  @override
  State<Progress1> createState() => _ProgressState();
}

class _ProgressState extends State<Progress1> {
   @override
    void initState() {
      super.initState();
      Future.delayed(Duration(seconds: 3), () {
        Get.to((finyouraccount()));
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 70,
                width: 70,
                child: Center(
                  child: CircularProgressIndicator(
                    //value: 5,
                    backgroundColor: otbcolor,
                    color: splashcolor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Uploading',
              style: TextStyle(color: Colors.black, fontSize: 12),
            )
          ],
        ),  
    );
   
  }
}
