import 'package:flutter/material.dart';


import '../../../color.dart';
class litbuild extends StatelessWidget {
     String img="continue";
     var text='';
     litbuild({required this.img,
     required this.text,
     });
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          margin: EdgeInsets.only(left: 17),
          decoration: BoxDecoration(
          color: catagorigescolors,
          borderRadius: BorderRadius.circular(100),
          ),
          child: Center(child: Image.asset('images/$img')),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child:Container(
            margin: EdgeInsets.only(left: screensize.width*0.01,
            ),
            child:  Text(text,
              style: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color: Colors.black,
                  fontWeight:FontWeight.w500,
                  fontSize: 15
              ),
            ),
          ),
        ),
      ],
    );
  }
}