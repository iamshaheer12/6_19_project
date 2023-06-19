import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../color.dart';
import 'OTPPhonenumber.dart';
import 'genderpage.dart';
import 'notvalidated/addPhonenumber.dart';

class editprofile extends StatefulWidget {
  // editprofile({required this.datalst,required this.gender});

  @override
  State<StatefulWidget> createState() {
    return _editprofilestate();
  }
}

class _editprofilestate extends State<editprofile> {
  // List datalst=[];
  // var gender='';

  // var docsvalue;
  // getdata()async{
  //   var myprofiledata=FirebaseFirestore.instance.collection('user');
  //   await  myprofiledata.where('username',isEqualTo: '${crnuser!.email.toString()}');
  //   var response=await myprofiledata.get().then((value){
  //     value.docs.forEach((element) {
  //       print('=================================');
  //       print('=================================');
  //       print(element.data());
  //       print('=================================');
  //       print('=================================');
  //       setState(() {
  //         docsvalue=element.id;
  //         datalst.add(element.data());
  //       });
  //     });
  //   });
  // }
  //_editprofilestate({required this.datalst,required this.gender});
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    // var crnuser=FirebaseAuth.instance.currentUser;
    TextEditingController _myphonenumber = new TextEditingController();
    return Scaffold(
      backgroundColor: profilebackgroudcolors,
      body: ListView(children: [
        Container(
          alignment: AlignmentDirectional.topStart,
          margin: EdgeInsets.only(
              left: screensize.width * 0.037, top: screensize.height * 0.029),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('images/mvc/coloredbackarrow.png')),
        ),

        Row(
          children: [
            Container(
              width: screensize.width * 0.61,
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                      //fontFamily: 'Satoshi-Medium',
                      color: filedcolor,
                      fontWeight: FontWeight.w600,
                      fontSize: 28),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: screensize.width * 0.153,
                  top: screensize.height * 0.023),
              child: InkWell(
                child: Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                      color: splashcolor,
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'JD',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

        ///this is end of edit
        //first contianer
        SizedBox(
          height: screensize.height * 0.033,
        ),
        Container(
          margin: EdgeInsets.only(left: screensize.width * 0.042),
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              'Personal information',
              style: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color: filedcolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ),
        ),
        SizedBox(
          height: screensize.height * 0.012,
        ),
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            elevation: 0.5,
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        top: screensize.height * 0.009),
                    child: Text(
                      'Legal first name',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: Latestofferscolors,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        bottom: screensize.height * 0.009,
                        top: screensize.height * 0.006),
                    child: Text(
                      'Jane ',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: accountlightfinaltxtcolors,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                ),
              ],
            )),
        //end first contianer
        //end logout
        SizedBox(
          height: screensize.height * 0.019,
        ),
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            elevation: 0.5,
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        top: screensize.height * 0.009),
                    child: Text(
                      'Legal Last name',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: Latestofferscolors,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        bottom: screensize.height * 0.009,
                        top: screensize.height * 0.006),
                    child: Text(
                      'Doe ',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: accountlightfinaltxtcolors,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                ),
              ],
            )),
        //second one
        //second contianer
        SizedBox(
          height: screensize.height * 0.019,
        ),
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            elevation: 0.5,
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        top: screensize.height * 0.009),
                    child: Text(
                      'Date of Birth',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: Latestofferscolors,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        bottom: screensize.height * 0.009,
                        top: screensize.height * 0.006),
                    child: Text(
                      '01/01/2003',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: accountlightfinaltxtcolors,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                ),
              ],
            )),

        //end second one
        SizedBox(
          height: screensize.height * 0.019,
        ),
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            elevation: 0.5,
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyPhone()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.037,
                          top: screensize.height * 0.009),
                      child: Text(
                        'Country of residence',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        bottom: screensize.height * 0.009,
                        top: screensize.height * 0.006),
                    child: Text(
                      'Netherlands',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: filedcolor,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                ),
              ],
            )),

        ///this is first edit to new

        SizedBox(
          height: screensize.height * 0.019,
        ),
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            elevation: 0.5,
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        top: screensize.height * 0.009),
                    child: Text(
                      'Postcode and City',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: splashcolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        bottom: screensize.height * 0.009,
                        top: screensize.height * 0.006),
                    child: Text(
                      '1105 AW Amsterdam',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: filedcolor,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                ),
              ],
            )),

        //third contianer
        SizedBox(
          height: screensize.height * 0.019,
        ),
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            elevation: 0.5,
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        top: screensize.height * 0.009),
                    child: Text(
                      'Street and number',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: splashcolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        bottom: screensize.height * 0.009,
                        top: screensize.height * 0.006),
                    child: Text(
                      'Gillis van Ledenberchstraat 112',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: filedcolor,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                ),
              ],
            )),

        //end fourth one
        SizedBox(
          height: screensize.height * 0.019,
        ),
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            elevation: 0.5,
            child: Column(
              children: [
                  Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        top: screensize.height * 0.009),
                    child: Text(
                      'Phone number',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: splashcolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(height: 3,),
                IntlPhoneField(
                  dropdownIconPosition: IconPosition.trailing,
                  initialCountryCode: '+363',
                  flagsButtonMargin: EdgeInsets.only(top: 25,left: 10),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(

                      border: InputBorder.none,
                      // focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 2),
                      hintText: 'Mobile number',
                      hintStyle: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: graycolors,
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      )),
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                  controller: _myphonenumber,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Notverified(datalst: []),
                        ));

                    ///initloginpage()
                  },
                ),
              ],
            )
            // )InkWell(
            //   onTap: (){
            //     Navigator.push(context,
            //    MaterialPageRoute(builder:
            //    (context) =>Notverified(datalst:datalst)
            //   ,));///initloginpage()
            //   },
            //   child: Container(
            //     margin: EdgeInsets.only(left: 35,top: 25),
            //     child: Text('${datalst[0]['MYPHONE']}',
            //       style: TextStyle(
            //           fontFamily: 'Satoshi-Medium',
            //           color:Colors.black,
            //           fontWeight:FontWeight.w400,
            //           fontSize: 12
            //       ),
            //     ),
            //   ),
            // ),

            ),
        SizedBox(
          height: screensize.height * 0.019,
        ),
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            elevation: 0.5,
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        top: screensize.height * 0.009),
                    child: Text(
                      'Email',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: splashcolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: screensize.width * 0.037,
                        bottom: screensize.height * 0.009,
                        top: screensize.height * 0.006),
                    child: Text(
                      'University/College Email',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: filedcolor,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                ),
              ],
            )),

        SizedBox(
          height: screensize.height * 0.019,
        ),
        GestureDetector(
           onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => genderpage(),
                          ));
                    },
          child: Card(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.only(
                  right: screensize.width * 0.042,
                  left: screensize.width * 0.042),
              elevation: 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                            margin: EdgeInsets.only(
                                left: screensize.width * 0.037,
                                top: screensize.height * 0.009),
                            child: Text(
                              'Gender',
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Medium',
                                  color: splashcolor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                        
                      ),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          margin: EdgeInsets.only(
                              left: screensize.width * 0.037,
                              bottom: screensize.height * 0.009,
                              top: screensize.height * 0.006),
                          child: Text(
                            'Male',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color: filedcolor,
                                fontWeight: FontWeight.w700,
                                fontSize: 13),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                  SizedBox(width: screensize.width*0.65,),
                  Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_drop_down,color: splashcolor,),
                      )
                ],
              )),
        ),
        SizedBox(
          height: screensize.height * 0.019,
        ),

        //end 6 one
      ]),
    );
  }
}
