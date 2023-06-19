//otpmvc.dart
import 'dart:async';
import 'dart:math';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import '../../../../color.dart';
import '../../../mainpage.dart';
class virefedcode extends StatefulWidget{
  var txt;
  List datalst=[];
  virefedcode({required this.txt,
    required this.datalst});
  @override
  State<StatefulWidget> createState() {
    return _virefedcodestate(txt: this.txt,datalst: this.datalst);
  }
}
class _virefedcodestate extends State<virefedcode>{
  Timer? countdownTimer;
  Duration myDuration = Duration(minutes: 1);
  bool isotpsend=false;
  int endTime = DateTime.now().minute;
  var txt;
  List datalst=[];
 String verfiy="";
 bool ismyyphoneotppass=false;
  
  var gender='';

  var docsvalue;
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
  void startTimer() {
    setState(() {
      countdownTimer =
          Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
    });
  }
  // Step 4
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }
  // Step 5
  void resetTimer() {
    stopTimer();
    setState(() => myDuration = Duration(minutes: 3));
  }
  // Step 6
  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }
  _virefedcodestate({required this.txt,
    required this.datalst});
  final _formKey = GlobalKey<FormState>();
  Random random = new Random();
  EmailOTP myauth = EmailOTP();
  TextEditingController txt1=new TextEditingController();
  TextEditingController txt2=new TextEditingController();
  TextEditingController txt3=new TextEditingController();
  TextEditingController txt4=new TextEditingController();
  TextEditingController txt5=new TextEditingController();
  TextEditingController txt6=new TextEditingController();
  // sendopt()async{
  //  return await FirebaseAuth.instance.verifyPhoneNumber(
  //     phoneNumber: '${txt}',
  //     verificationCompleted: (PhoneAuthCredential credential) {
  //       print('===========================');
  //       print('===========================');
  //       print('======${txt}====');
  //       print('===========verificationCompleted============');
  //       print('===========================');
  //       setState(() {
  //         ismyyphoneotppass=true;
  //       });
  //       print('===========================');
  //       print('===========================');
  //       print('======${ismyyphoneotppass}====');
  //       print('===========verificationCompleted============');
  //       print('===========================');
  //     },
  //     verificationFailed: (FirebaseAuthException e) {
  //       print('===========================');
  //       print('===========================');
  //       print('======${txt}====');
  //       print('===========verificationFailed============');
  //       print('===========================');
  //     },
  //     codeSent: (String verificationId, int? resendToken) {
  //      setState(() {
  //        verfiy=verificationId;
  //      });
  //       print('===========================');
  //       print('===========================');
  //       print('======${txt}====');
  //       print('===========Code send============');
  //       print('===========================');
  //     },
  //     codeAutoRetrievalTimeout: (String verificationId) {
  //       print('===========================');
  //       print('===========================');
  //       print('======${txt}====');
  //       print('====codeAutoRetrievalTimeout==');
  //       print('===========================');
  //     },
  //   );
  // }
  var userOtp;
  bool isitendtosenditagain=false;
  CountdownTimerController controller=new  CountdownTimerController(endTime: 3);
  onEnd(){
    setState(() {
      isitendtosenditagain=true;
    });
  }

  @override
  void initState() {
    // sendopt();
    // getdata();
    startTimer();
    print('=================================');
    print('=================================');
    print(docsvalue.toString());
    print('=================================');
    print('=================================');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    var userOtp;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: screensize.height*0.003,),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(left: screensize.width*0.05,top: 15),
            child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset('images/mvc/coloredbackarrow.png')),
          ),
          SizedBox(height:15 ,),
          Column(children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width*0.06),
              child:  Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('Verify your',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Variable',
                      color: Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize: 32
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: screensize.width*0.06),
              child:  Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text(' Phone number',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Variable',
                      color: Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize: 32
                  ),
                ),
              ),
            ),
          ],),
          SizedBox(height:15 ,),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text('We’ve sent it to ',
                style:TextStyle(
                    fontFamily: 'Satoshi-Variable',
                    color:seconpagecolors,
                    fontWeight:FontWeight.w400,
                    fontSize: 13
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.03,
                right: screensize.width*0.01
            ),
            child: Form(
              key: _formKey,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10)
                    ,child: Container(
                    width: 40,
                    height: 56,
                    decoration: BoxDecoration(
                        color:otbcolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    //margin: EdgeInsets.only(left: 15,right: 15)
                    child:TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: txt1,
                      maxLines: 1,
                      onChanged: (_) => FocusScope.of(context).nextFocus(),
                      inputFormatters:[
                        LengthLimitingTextInputFormatter(1),
                      ],
                      // textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'otp';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        label:  Center(
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Align(
                              alignment: AlignmentDirectional.center,
                              child: Text('',
                                textAlign: TextAlign.center,
                                style:TextStyle(
                                  fontFamily: 'Satoshi-Medium',
                                  color: Colors.black,
                                  fontSize: 36,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10)
                    ,child: Container(
                    width: 40,
                    height: 56,
                    decoration: BoxDecoration(
                        color:otbcolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ), //margin: EdgeInsets.only(left: 15,right: 15)
                    child:TextFormField(
                      controller: txt2,
                      maxLines: 1,
                      onChanged: (_) => FocusScope.of(context).nextFocus(),
                      inputFormatters:[
                        LengthLimitingTextInputFormatter(1),
                      ],
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'otp';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        label:  Center(
                          //margin: EdgeInsets.only(left: 30,bottom: 20),
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Align(
                              alignment: AlignmentDirectional.center,
                              child: Text('',
                                textAlign: TextAlign.center,
                                style:TextStyle(
                                  fontFamily: 'Satoshi-Medium',
                                  color: Colors.black,
                                  fontSize: 36,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10)
                    ,child: Container(
                    width: 40,
                    height: 56,
                    decoration: BoxDecoration(
                        color:otbcolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    //margin: EdgeInsets.only(left: 15,right: 15)
                    child:TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: txt3,
                      maxLines: 1,
                      onChanged: (_) => FocusScope.of(context).nextFocus(),
                      inputFormatters:[
                        LengthLimitingTextInputFormatter(1),
                      ],
                      // textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'otp';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        label:  Center(
                          //margin: EdgeInsets.only(left: 30,bottom: 20),
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Align(
                              alignment: AlignmentDirectional.center,
                              child: Text('',
                                textAlign: TextAlign.center,
                                style:TextStyle(
                                  fontFamily: 'Satoshi-Medium',
                                  color: Colors.black,
                                  fontSize: 36,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                  //Line 7.png
                  Container(
                    margin: EdgeInsets.only(left: 1,right: 1)
                    ,child:Image.asset('images/mvc/Line 7.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10)
                    ,child:Container(
                    width: 40,
                    height: 56,
                    decoration: BoxDecoration(
                        color:otbcolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    //margin: EdgeInsets.only(left: 15,right: 15)
                    child:TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: txt4,
                      maxLines: 1,
                      onChanged: (_) => FocusScope.of(context).nextFocus(),
                      inputFormatters:[
                        LengthLimitingTextInputFormatter(1),
                      ],
                      // textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'otp';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        label:  Center(
                          //margin: EdgeInsets.only(left: 30,bottom: 20),
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Align(
                              alignment: AlignmentDirectional.center,
                              child: Text('',
                                textAlign: TextAlign.center,
                                style:TextStyle(
                                  fontFamily: 'Satoshi-Medium',
                                  color: Colors.black,
                                  fontSize: 36,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10)
                    ,child: Container(
                    width: 40,
                    height: 56,
                    decoration: BoxDecoration(
                        color:otbcolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    //margin: EdgeInsets.only(left: 15,right: 15)
                    child:TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: txt5,
                      maxLines: 1,
                      onChanged: (_) => FocusScope.of(context).nextFocus(),
                      inputFormatters:[
                        LengthLimitingTextInputFormatter(1),
                      ],
                      // textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'otp';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        label:  Center(
                          //margin: EdgeInsets.only(left: 30,bottom: 20),
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Align(
                              alignment: AlignmentDirectional.center,
                              child: Text('',
                                textAlign: TextAlign.center,
                                style:TextStyle(
                                  fontFamily: 'Satoshi-Medium',
                                  color: Colors.black,
                                  fontSize: 36,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10)
                    ,child: Container(
                    width: 40,
                    height: 56,
                    decoration: BoxDecoration(
                        color:otbcolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    //margin: EdgeInsets.only(left: 15,right: 15)
                    child:TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: txt6,
                      maxLines: 1,
                      onChanged: (_) => FocusScope.of(context).nextFocus(),
                      inputFormatters:[
                        LengthLimitingTextInputFormatter(1),
                      ],
                      // textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'otp';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        label:  Center(
                          //margin: EdgeInsets.only(left: 30,bottom: 20),
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Align(
                              alignment: AlignmentDirectional.center,
                              child: Text('',
                                textAlign: TextAlign.center,
                                style:TextStyle(
                                  fontFamily: 'Satoshi-Medium',
                                  color: Colors.black,
                                  fontSize: 36,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Center(
            child:  Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text('Resend code in',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: Colors.black,
                          fontWeight:FontWeight.w700,
                          fontSize: 13
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 106),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child:
                    Text('$minutes:$seconds',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: splashcolor,
                          fontWeight:FontWeight.w700,
                          fontSize: 13
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          ///second otp
          SizedBox(height: 15,),
          Center(
            child:  Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 40),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text('Didn’t get the code?',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: Colors.black,
                          fontWeight:FontWeight.w700,
                          fontSize: 13
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 148),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child:
                    InkWell(
                      onTap: ()async{
                        print('===========================');
                        print('===========================');
                        print('======${txt}===============');
                        print('===========================');
                        print('===========================');
                      },
                      child: Text(' Resend it.',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color:myDuration.inMinutes==0&&myDuration.inSeconds==0?splashcolor:textlightcolor,
                            fontWeight:FontWeight.w700,
                            fontSize: 13
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: screensize.height*0.47,
          ),
          Container(
            margin: EdgeInsets.only(right: 15,left:15
                ,top: 15,bottom:15),
            height:48,
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
              //sendopt();
              setState(() {
                userOtp='${txt1.text}${txt2.text}${txt3.text}${txt4.text}${txt5.text}${txt6.text}';
                print("userOtp===---==$userOtp===");
              });
              if (_formKey.currentState!.validate()){
                print('========================');
                print('========================');
                print('========================');
                print('=========${userOtp}==========');
                print('##############################');
                print('##############################');
                print('##############################');
                // PhoneAuthCredential credential =
                // PhoneAuthProvider.credential(verificationId:verfiy,
             
             //   await addUserphone();
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.info,
                  borderSide: const BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                  width: 280,
                  buttonsBorderRadius: const BorderRadius.all(
                    Radius.circular(2),
                  ),
                  dismissOnTouchOutside: true,
                  dismissOnBackKeyPress: false,
                  onDismissCallback: (type) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(''),
                      ),
                    );
                  },
                  headerAnimationLoop: false,
                  animType: AnimType.bottomSlide,
                  title: 'Phone verified',
                  desc: 'your phone is verified',
                  showCloseIcon: true,
                  btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                ).show().then((value) {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => mainpage1(),));
                });
              }
            },
              style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(splashcolor),
                  elevation: MaterialStateProperty.all(3)
              ),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child:   Text('Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Variable',
                        color: Colors.white,
                        fontWeight:FontWeight.w100,
                        fontSize: 16
                    ),
                  ),
                ) ,
              ),

            ),
          )

        ],
      ),
    );
  }
  
}