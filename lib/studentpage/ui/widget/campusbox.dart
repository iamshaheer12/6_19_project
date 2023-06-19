//campusbox.dart
//sellwidget.dart
import 'package:flutter/material.dart';

import '../../../color.dart';
class campusbox extends StatelessWidget {
  var txt='';
  campusbox({required this.txt});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return  Container(
      margin: EdgeInsets.only(left: screensize.width*0.04),
      height: 111,
      width: 162,
      child: Column(
        children: [
          Center(
            child: Container(
              alignment: AlignmentDirectional.center,
              margin: EdgeInsets.only(left:
              screensize.width*0.03,
                  top: 35,bottom: 10),
              child:  Text(txt,
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w400,
                    fontSize: 14
                ),
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: splashgragy
      ),
    );
    ///first column
  }

}