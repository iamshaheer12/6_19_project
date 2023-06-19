import 'package:flutter/material.dart';
import '../../../color.dart';
class newlsistwidget extends StatelessWidget {
  var txt='';
  bool isthereareimage=false;
  newlsistwidget({required this.txt,
    required this.isthereareimage});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Container(
      width: screensize.width*0.5,
      height: 64,
      margin: EdgeInsets.only(right: screensize.width*0.05,left: screensize.width*0.05),
      decoration: BoxDecoration(
          color: splashgragy
      ),
      child:InkWell(onTap: (){
        print("university");
      },
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
                margin: EdgeInsets.only(left: screensize.width*0.08,
                    top: 10,bottom: 10),
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(txt,
                        style:TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: Colors.black,
                            fontWeight:FontWeight.w400,
                            fontSize: 10
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text('                   ',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color: Colors.black,
                                fontWeight:FontWeight.w400,
                                fontSize: 12
                            ),
                          ),
                        ),
                        Container(
                          child:isthereareimage==false?null:
                          Image.asset('images/genderarrow.png'),
                        )
                      ],
                    )
                  ],
                )
            ),
          )
      ),
    );
    ///first column
  }

}

