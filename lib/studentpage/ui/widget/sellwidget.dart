//sellwidget.dart
import 'package:flutter/material.dart';

class sellwidget extends StatelessWidget {
  String txt="continue";
  var fontwiew=FontWeight.w700;
  var color=Color(0xFFD9D9D9);
  var color2=Color(0xFFD9D9D9);
  double marginright=0;
  double marginleft=0;
  double margintop=0;
  double marginbottom=0;
  double btnwidth=0;
  double btnhight=0;
  var pageroute;
  sellwidget({required this.txt,required this.fontwiew,
     required this.color,required this.pageroute,
    required this.marginright, required this.marginleft,required this.margintop,
    required this.marginbottom, required this.btnwidth,required this.btnhight,
    required this.color2
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: marginright,left:marginleft
          ,top: margintop,bottom:marginbottom),
      height:btnhight,
      width: btnwidth,
      decoration: BoxDecoration(
          color: color2,
          border: Border.all(
            color: color2,
            width:1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(25))
      ),
      child:Align(
        alignment: AlignmentDirectional.center,
        child:  Text(txt,
          style: TextStyle(
              fontFamily: 'Satoshi-Medium',
              color: Colors.black,
              fontWeight:FontWeight.w700,
              fontSize: 12
          ),
        ) ,
      ),
    );
  }
}