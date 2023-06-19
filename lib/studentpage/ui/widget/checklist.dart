import 'package:flutter/material.dart';

import '../../../color.dart';
class clubbuild extends StatelessWidget {
  var txt='';
  var txt2='';
  clubbuild({required this.txt,
    required this.txt2});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Container(
      width: screensize.width*0.8,
      height: 82,
      margin: EdgeInsets.only(right:
      screensize.width*0.05,
      left: screensize.width*0.05),
      decoration: BoxDecoration(
          color: splashgragy,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child:InkWell(onTap: (){
        print("university");
      },
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
                margin: EdgeInsets.only(left: screensize.width*0.04,
                    top: 10,bottom: 10),
                child:
                    Row(
                      children: [
                        Center(
                          child: Container(
                            width: 55,
                            height: 52,
                            decoration: BoxDecoration(
                              color: splashgragy2
                           , borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child:Center(
                              child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text(txt,
                                  style:TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color: Colors.black,
                                      fontWeight:FontWeight.w400,
                                      fontSize: 10
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          decoration: BoxDecoration(
                            color: splashgragy,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          margin: EdgeInsets.only(top: 15),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(txt2,
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
                    )
                )
            ),
          )
    );
    ///first column
  }
}