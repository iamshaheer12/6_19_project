///loginphonecampus
import 'package:flutter/material.dart';
import '../../../color.dart';
import 'Logecampus.dart';
import '../SignUpPages/otp-email-3.dart';
import 'email-5.dart';
///Logecampus.dart
class loginphonecampus extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _loginphonecampusstate();
  }
}
class _loginphonecampusstate extends State<loginphonecampus>{
  var docsvalue;
  bool ispasscodetrue=false;
  List datalst=[];
  var comnumb;
  final _formKey = GlobalKey<FormState>();
  TextEditingController email=new TextEditingController();
 
  int topbarselection=2;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: 
      // LayoutBuilder(
      // builder: (context, contraints) {
      //   final screenWidth = contraints.maxWidth;
      //   final screenHeight = contraints.maxHeight;
      //   return 
        ListView(children: [ Column(
          
            children: [
                SizedBox(
                height:screenHeight * 0.039,
              ),
              Container(
                height:screenHeight* 0.017,
                alignment: AlignmentDirectional.topStart,
                margin: EdgeInsets.only(
                    left: screenWidth * 0.042, ),
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
                width: screenWidth*0.91,
                margin: EdgeInsets.only(left:screenWidth * 0.042,right: screenWidth * 0.042 ),
                child: Text('Log in to eCampus',
                 style: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: filedcolor,
                          fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 26),)
              ),
             SizedBox(
                height:screenHeight* 0.024,
              ),
              Container(
                width:screenWidth*0.93,
               height: screenHeight*0.061,
               margin: EdgeInsets.only(left:screenWidth * 0.042,right: screenWidth * 0.040),
               
                decoration: BoxDecoration(
                  // border: Border.all(width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: otbcolor
                ),
                child:Row(
                  children: [
                    InkWell(
                      onTap:(){
                        setState(() {
                          topbarselection=1;
                        });
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context) => Logecampus(),));
                      }
                      ,child: Container(
                     width: screenWidth*0.45,
                    height: screenHeight*0.061,
                     margin: EdgeInsets.only(right: 0,left: 4.4),
                      decoration: BoxDecoration(
        
                          border: topbarselection==1?Border.all(width: 1):Border.all(width: 0
                              ,color: otbcolor),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: topbarselection==1?Colors.white:
                          otbcolor),
                      child: Align(
                        alignment: AlignmentDirectional.center,
                        child:  Text('Phone number',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Variable',
                              color: filedcolor,
                              fontWeight:FontWeight.w500,
                              fontSize: 13
                          ),
                        ) ,
                      ),
                    ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          topbarselection=2;
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context) => loginphonecampus(),));
                          topbarselection=2;
                        });
        
                      },
                      child: Container(
                         width: screenWidth*0.45,
                       height: screenHeight*0.061,
                       margin: EdgeInsets.only(right: 0,left: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: topbarselection==2?Colors.white:
                          otbcolor,
                          border: topbarselection==2?Border.all(width: 1):Border.all(width: 0
                              ,color: otbcolor),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional.center,
                          child:  Text('Email',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Variable',
                                color: filedcolor,
                                fontWeight:FontWeight.w500,
                                fontSize: 13
                            ),
                          ) ,
                        ),
                      ),
                    )
                  ],
                ),
              ),
             SizedBox(height: screenHeight*0.024,),
             // SizedBox(height: screensize.height*0.03,),
              Form(
                key: _formKey,
                
                   
                   child: Container(
                     margin: EdgeInsets.only(right: screenWidth*0.042,
                       left: screenWidth*0.042),
                       width: screenWidth*0.91,
                      // height: screenHeight*0.064,
                        // decoration: BoxDecoration(
                        //     color: Colors.white
                        // ),
                        
                          
                          
                            child: TextFormField(
                              textAlign: TextAlign.left,
                              controller: email,
                              decoration: InputDecoration(
                                 labelText: 'Email address',
                      labelStyle:TextStyle(
                          //fontFamily: 'Satoshi-Variable',
                          color: splashcolor,
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ) ,
                     // errorText: '',
                  
                       focusedBorder: OutlineInputBorder(
                        
                            //borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              width: 2,
                              color: splashcolor,
                            ),
                          ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                       color: Colors.black, width: 0.1)),
                                //focusColor: Colors.amber,
              
                                // labelText: 'FIRST NAME',
                                // labelStyle: TextStyle(
                                //     fontSize: 15,
                                //     color: Colors.black,
                                //     fontWeight: FontWeight.bold,
                                //     fontStyle: FontStyle.normal),
                                border: OutlineInputBorder(
                                  
                                    borderSide: BorderSide(
                                     color: Colors.black, width: 0.1)),
                                  contentPadding: EdgeInsets.only(left: 8,top: 10),
                                  hintText:  '   Email address',
                                  hintStyle: TextStyle(
                                   // fontFamily: 'Satoshi-Variable',
                                    color:adidaslogocfdolors,
                                  fontWeight:FontWeight.w400,
                                    fontSize: 13,
                                  )
                              ),
                               validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'This email address is not valid';
                                } else if (!value.contains('@')) {
                                  return 'This email address is not valid';
                                }
                                return null;
                              },
                            ),
                          ),
                        
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
                      margin: EdgeInsets.only(
                       left:screenWidth*0.044,
                        top: 5
                      ),
                      child: Text('lost access to my email address',style: TextStyle(
                        color: splashcolor,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),),
                    ),
                 ],
               ),
                      
                //5 contianer
             SizedBox(height: screenHeight*0.52,),
              Center(
                  child: Container(
                     margin: EdgeInsets.only(right: screenWidth*0.042,left:screenWidth*0.042,
                        
                         bottom:screenHeight*0.067,
                         ),
                     height:screenHeight*0.059,
                     width: screenWidth*0.91,
                    decoration: BoxDecoration(
                        color: splashcolor,
                        border: Border.all(
                          color: splashcolor,
                          width:1,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: ElevatedButton(onPressed: () async{
                if (_formKey.currentState!.validate()){
                         Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>
                          ///fhfghdf
                              email_5()
                            ///fhfghdf
                          ));
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
              )
            ],
          ),]
        )
  // }
  //   )
    )
    ;
  }

}