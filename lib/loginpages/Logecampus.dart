import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../color.dart';
import '../SignUpPages/otp-email-3.dart';
import 'email-5.dart';
import 'loginphonecampus.dart';

///Logecampus.dart
class Logecampus extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Logecampusstate();
  }
}

class _Logecampusstate extends State<Logecampus> {
  var docsvalue;
  bool ispasscodetrue = false;
  List datalst = [];
  var comnumb;
  var gender = '';
  TextEditingController email = new TextEditingController();

  int topbarselection = 1;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // body: LayoutBuilder(builder: (context, contraints) {
      // final screenWidth = contraints.maxWidth;
      // final screenHeight = contraints.maxHeight;

      // return 
    body:  ListView(children: [
        SizedBox(
          height: screenHeight * 0.039,
        ),
        Container(
          height: screenHeight * 0.017,
          alignment: AlignmentDirectional.topStart,
          margin: EdgeInsets.only(
            left: screenWidth * 0.042,
          ),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('images/mvc/coloredbackarrow.png')),
        ),
        SizedBox(
          height: screenHeight * 0.028,
        ),
        Container(
            // height: screenHeight * 0.044,
            width: screenWidth * 0.91,
            margin: EdgeInsets.only(
                left: screenWidth * 0.042, right: screenWidth * 0.042),
            child: Text(
              'Log in to eCampus',
              style: TextStyle(
                  //fontFamily: 'Satoshi-Variable',
                  color: filedcolor,
                    fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 26),
            )),
        SizedBox(
          height: screenHeight * 0.024,
        ),
        Container(
          width: screenWidth * 0.93,
          height: screenHeight * 0.061,
          margin: EdgeInsets.only(
              left: screenWidth * 0.042, right: screenWidth * 0.042),
          decoration: BoxDecoration(
              // border: Border.all(width: 1),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: otbcolor),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    topbarselection = 1;
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Logecampus(),
                      ));
                },
                child: Container(
                  width: screenWidth * 0.45,
                  height: screenHeight * 0.061,
                  margin: EdgeInsets.only(
                    right: 2,
                    left: 0,
                    
                  ),
                  decoration: BoxDecoration(
                      border: topbarselection == 1
                          ? Border.all(width: 1)
                          : Border.all(width: 0, color: otbcolor),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: topbarselection == 1 ? Colors.white : otbcolor),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'Phone number',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: filedcolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    topbarselection = 2;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => loginphonecampus(),
                        ));
                    topbarselection = 2;
                  });
                },
                child: Container(
                  width: screenWidth * 0.45,
                  height: screenHeight * 0.061,
                  margin: EdgeInsets.only(right: 0, left: 3.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: topbarselection == 2 ? Colors.white : otbcolor,
                    border: topbarselection == 2
                        ? Border.all(width: 1)
                        : Border.all(width: 0, color: otbcolor),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'Email',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: filedcolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.024,
        ),
        Card(
            margin: EdgeInsets.only(
                right: screenWidth * 0.042, left: screenWidth * 0.042),
            elevation: 2,
            child: Container(
                width: screenWidth * 0.93,
                height: screenHeight * 0.068,
        
               
                child: Container(
                  child: IntlPhoneField(
                     dropdownIconPosition: IconPosition.trailing,
              initialCountryCode: '+363',
              flagsButtonMargin: EdgeInsets.only(top: 25,left: 10),
                   // obscureText: false,
                    //flagsButtonMargin: EdgeInsets.only(top: 25),
                    showCursor: true,
                    autofocus: true,
                    autovalidateMode: AutovalidateMode.values.first,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                     // enabled: false,
                         
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 2,top: 25),
                        hintText: 'Mobile number',
                        hintStyle: TextStyle(
                         // fontFamily: 'Satoshi-Medium',
                          color: Colors.black,
                          //fontWeight: FontWeight.w400,
                          fontSize: 13,
                        )),
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    onSaved: (phone) {},
                    onCountryChanged: (country) {
                      print('Country changed to: ' + country.name);
                    },
                    onTap: () {},
                  ),
                ))), //5 contianer
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                      left: screenWidth * 0.044,
                        top: 5
                      ),
                      child: Text('lost access to my phone number',style: TextStyle(
                        color: splashcolor,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),),
                    ),
                  ],
                ),
        SizedBox(
          height: screenHeight * 0.52,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Center(
              child: Container(
            margin: EdgeInsets.only(
              right: screenWidth * 0.042,
              left: screenWidth * 0.042,
              bottom: screenHeight * 0.067,
            ),
            height: screenHeight * 0.059,
            width: screenWidth * 0.91,
            decoration: BoxDecoration(
                color: splashcolor,
                border: Border.all(
                  color: splashcolor,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => email_5()));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(splashcolor),
                  elevation: MaterialStateProperty.all(3)),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Variable',
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          )),
        )
      ])
    //})
    );
  }
}
