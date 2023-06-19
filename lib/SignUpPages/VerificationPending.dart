import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';

import '../../../color.dart';
import 'VerificationCompleted.dart';


///twofinyouraccount
class finyouraccount extends StatefulWidget {
  // var docs = '';
  // var url;
  // TextEditingController email = new TextEditingController();
  // finyouraccount({required this.docs, required this.email, required this.url});
  @override
  State<StatefulWidget> createState() {
    return _finyouraccountstate(
       );
  }
}

class _finyouraccountstate extends State<finyouraccount> {
  var docs = '';
  var url;
  TextEditingController email = new TextEditingController();
  // _finyouraccountstate(
  //     {required this.docs, required this.email, required this.url});
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
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
              child: Icon(CupertinoIcons.multiply,color: Colors.black,),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: screensize.width * 0.042, ),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'We’re verifying your',
                style: TextStyle(
                   // fontFamily: 'Satoshi-Medium',
                    color: filedcolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 28),
              ),
            ),
          ),
         Container(
            margin: EdgeInsets.only(left: screensize.width * 0.042,right:screensize.width * 0.042 ),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'account',
                style: TextStyle(
                   // fontFamily: 'Satoshi-Medium',
                    color: filedcolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 28),
              ),
            ),
          ),
         
          SizedBox(
            height: screensize.height * 0.0049,
          ),
          Container(
            margin: EdgeInsets.only(left:screensize.width * 0.042,right:screensize.width * 0.042),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'Don’t worry though, we should be done soon.',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
              ),
            ),
          ),

          ///start
          SizedBox(
            height: screensize.height * 0.644,
          ),
          Container(
            margin: EdgeInsets.only(left:screensize.width * 0.042,right:screensize.width * 0.042, ),
            height: screensize.height*0.059,
            width: screensize.width,
            decoration: BoxDecoration(
                color: splashcolor,
                border: Border.all(
                  color: splashcolor,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: ElevatedButton(
              onPressed: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => twofinyouraccount(
                          url: this.url, docs: this.docs, email: this.email),
                    ));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(splashcolor),
                elevation: MaterialStateProperty.all(3),
              ),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'OK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
