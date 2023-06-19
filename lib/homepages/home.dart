import 'package:ecampus/homepages/profilepage.dart';
import 'package:ecampus/studentpage/ui/widget/button.dart';
import 'package:flutter/material.dart';
import '../../../color.dart';
class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _homestate();
  }
}
class _homestate extends State<home>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return  ListView(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.1),
                child:  Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text('Campus',
                    style:TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 32
                    ),
                  ) ,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.31),
                child: Image.asset('images/search.png'),
              ),
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.049),
                child: Image.asset('images/profile account.png'),
              ),
            ],
          ),
          SizedBox(height: screensize.height*0.06,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Butn(txt: 'Feed',color: splashgragy,btnhight: 27,
                fontwiew: FontWeight.w400,Size: 14
                ,marginbottom: 15,marginleft: 10,marginright: 10,margintop: 0
                 ,btnwidth: screensize.width*0.4,color2:splashgragy ,
                  pageroute: Profilepage(),
                  dosomething: (){

                  },
               colorbtntxt: Colors.black,
                    radvalue: 15),
              Butn(txt: 'Events',color: splashgragy,btnhight: 27,
                  fontwiew: FontWeight.w400,Size: 14
                  ,marginbottom: 15,marginleft: 10,marginright: 10,margintop: 0
                  ,btnwidth: screensize.width*0.4,color2:splashgragy,
                  pageroute: Profilepage(),
                  dosomething: (){

                  },
                  colorbtntxt: Colors.black,
                    radvalue: 15),
            ],
          ),
          //here
          SizedBox(height: screensize.height*0.06,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.2),
            child:  Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('Account name',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w400,
                    fontSize: 14
                ),
              ) ,
            ),
          ),
          SizedBox(height: screensize.height*0.02,),
          Center(
            child: Container(
              height: screensize.height*0.25,
              width:screensize.width*0.9,
              decoration: BoxDecoration(
                color: splashgragy,
              ),
              child: Center(
                child: Text('Post 1',
                  style:TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight:FontWeight.w400,
                      fontSize: 16
                  ),
                ) ,
              ),
            ),
          ),
          //end
          SizedBox(height: screensize.height*0.03,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.2),
            child:  Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('Account name',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w400,
                    fontSize: 14
                ),
              ) ,
            ),
          ),
          SizedBox(height: screensize.height*0.008,),
          Center(
            child: Container(
              height: screensize.height*0.25,
              width:screensize.width*0.9,
              decoration: BoxDecoration(
                color: splashgragy,
              ),
              child: Center(
                child: Text('Post 2',
                  style:TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight:FontWeight.w400,
                      fontSize: 16
                  ),
                ) ,
              ),
            ),
          ),
        ],
      )
    ;
  }

}