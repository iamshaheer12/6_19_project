///twofinyouraccount

import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';

import '../../../color.dart';
import '../welcometoecampus.dart';
///twofinyouraccount
class twofinyouraccount extends StatefulWidget{
  var docs='';
  var url;
  TextEditingController email=new TextEditingController();
  twofinyouraccount({required this.docs,
    required this.email,required this.url});
  @override
  State<StatefulWidget> createState() {
    return _twofinyouraccountstate(url: this.url,docs: this.docs,email: this.email);
  }
}
class _twofinyouraccountstate extends State<twofinyouraccount>{
  var docs='';
  var url;
  TextEditingController email=new TextEditingController();
  _twofinyouraccountstate({required this.docs,
    required this.email,required this.url});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
           SizedBox(
            height: screensize.height * 0.028,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(left: 10),
              child:  Icon(CupertinoIcons.multiply,color: Colors.black,),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.042,right:  screensize.width*0.042),
            child:  Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('Verification',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: filedcolor,
                    fontWeight:FontWeight.w600,
                    fontSize: 32
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.042,right:  screensize.width*0.042),
            child:  Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('completed',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color:filedcolor,
                    fontWeight:FontWeight.w600,
                    fontSize: 28
                ),
              ),
            ),
          ),
          /// completed
          SizedBox(height: screensize.height*0.003,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.042,right:  screensize.width*0.042),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text('Congratulations! We have verified your account and now you can enjoy using your account.',
                style:TextStyle(
                    //fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w400,
                    fontSize: 13
                ),
              ),
            ),
          ),
          ///start
          SizedBox(
            height: screensize.height*0.108,
          ),
          Container(
            alignment: AlignmentDirectional.center,
            height:screensize.height*0.246,
            width:screensize.width*0.533,
            child: Image.asset('images/mvc/Group 162821.png'),
          ),
          SizedBox(
            height: screensize.height*0.267,
          ),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.042,right:  screensize.width*0.042,
                ),
            height:screensize.height*0.059,
            width: screensize.width,
            decoration: BoxDecoration(
                color: splashcolor,
                border: Border.all(
                  color: splashcolor,
                  width:1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            child: ElevatedButton(onPressed: () async{
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => welcometoecampus(),));
            },
              style:ButtonStyle(
                backgroundColor: MaterialStateProperty.all(splashcolor),
                elevation: MaterialStateProperty.all(3),
              ),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child:   Text('Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color:Colors.white,
                        fontWeight:FontWeight.w700,
                        fontSize: 16
                    ),
                  ),
                ) ,
              ),

            ),
          ),
          SizedBox(height: 5,),
        ],
      ),
    );
  }

}