import 'package:flutter/material.dart';
class Butn extends StatelessWidget {
  String txt="continue";
  int Size=16;
  var fontwiew=FontWeight.w700;
  var color=Color(0xFFD9D9D9);
  var color2=Color(0xFFD9D9D9);
  var colorbtntxt=Color(0xFFffff);
  double marginright=0;
  double  radvalue=5;
  double marginleft=0;
  double margintop=0;
  double marginbottom=0;
  double btnwidth=0;
  double btnhight=0;
   dosomething(){
     print("done");
   }
  var pageroute;
  Butn({required this.txt,required this.fontwiew,
  required this.Size, required this.color,required this.pageroute,
    required this.marginright, required this.marginleft,required this.margintop,
    required this.marginbottom, required this.btnwidth,required this.btnhight,
    required this.color2,required this.colorbtntxt ,required this.radvalue,
    required dosomething()
  }
  );
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
borderRadius: BorderRadius.all(Radius.circular(radvalue))
),
child: ElevatedButton(onPressed: () {
 dosomething();
 Navigator.push(context, MaterialPageRoute(builder:
     (context) => pageroute,));
},
style:ButtonStyle(
backgroundColor: MaterialStateProperty.all(color2),
  elevation: MaterialStateProperty.all(3)
),
child: Center(
child: Align(
  alignment: AlignmentDirectional.center,
  child:   Text(txt,
  textAlign: TextAlign.center,
  style: TextStyle(
      fontFamily: 'Satoshi-Medium',
  color: colorbtntxt,
  fontWeight:FontWeight.w400,
  fontSize: 16
  ),
  ),
) ,
),

),
);
  }
}