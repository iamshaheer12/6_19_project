//sellwidget.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../color.dart';

class trendwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: 44,
          height: 41,
          margin: EdgeInsets.only(right: 10,left: 10,top:15),
          decoration: BoxDecoration(
              color: splashgragy2,
              borderRadius: BorderRadius.circular(100)
          ),
        ),
        SizedBox(height: screensize.height*0.01,),
        //Line 11.png
        Container(
          child: Image.asset('images/Line 11.png',
          ),
        ),
        SizedBox(height: screensize.height*0.01,),
        Container(
          width: 44,
          height: 41,
          margin: EdgeInsets.only(right: 10,left: 10),
          decoration: BoxDecoration(
              color: splashgragy2,
              borderRadius: BorderRadius.circular(100)
          ),
        ),
      ],
    );
    ///first column
  }

  }