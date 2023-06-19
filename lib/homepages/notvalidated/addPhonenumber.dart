import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../../color.dart';
import '../OTPPhonenumber.dart';
class Notverified extends StatefulWidget{
  List datalst=[];
  Notverified({required this.datalst});
  @override
  State<StatefulWidget> createState() {
    return _Notverifiedstate(datalst: this.datalst);
  }}

  class _Notverifiedstate extends State<Notverified>{
    List datalst=[];
    var comnumb;
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
    _Notverifiedstate({required this.datalst});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:splashgragy ,
      body: Container(
        width: screensize.width,
       height: screensize.height,
      decoration: BoxDecoration(
     color: splashgragy
      ),
   child: SingleChildScrollView(
     scrollDirection: Axis.vertical,
      child: Column(
     children: [
     SizedBox(
       height: 20,
        ),
       Container(
         decoration: BoxDecoration(
         borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
       topRight: Radius.circular(25),
       )
     ),
        child: Stack(
         children: [
          Container(
          width: screensize.width,
          height: screensize.height*0.95,
            margin: EdgeInsets.only(top: screensize.height*0.10),
            decoration: BoxDecoration(
           color: Colors.white,
         borderRadius: BorderRadius.all(Radius.circular(25)),
         ),
         child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(
          children: [
             Container(
           alignment: AlignmentDirectional.topStart,
           margin: EdgeInsets.only(left: screensize.width * 0.037, top: screensize.height*0.029),
           child: InkWell(
               onTap: (){
                 Navigator.pop(context);
               },
               child: Icon(CupertinoIcons.multiply,color: splashcolor,)),
         ),
         SizedBox(height:screensize.height*0.037),
           Container(
          margin: EdgeInsets.only(left: screensize.width*0.042),
              child:  Align(
                 alignment: AlignmentDirectional.topStart,
             child:  Text('Your new number',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
              color: filedcolor,
                fontWeight:FontWeight.w600,
          fontSize: 28
            ),
            ) ,
            ),
         ),
          SizedBox(height:screensize.height*0.020),
            Card(
            
                margin: EdgeInsets.only(right: screensize.width*0.042,
                    left: screensize.width*0.042),
                elevation: 2,
              
                      child: IntlPhoneField(
                         dropdownIconPosition: IconPosition.trailing,
              initialCountryCode: '+363',
              flagsButtonMargin: EdgeInsets.only(top: 25,left: 10),
                        //flagsButtonMargin: EdgeInsets.only(top: 25),
                        showCursor: true,
                        autofocus: true,
                        autovalidateMode:AutovalidateMode.values.first,

                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                           border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 2),
                            hintText:  'Mobile number',
                            hintStyle: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color:Colors.black,
                              fontWeight:FontWeight.w400,
                              fontSize: 13,
                            )
                        ),
                        onChanged: (phone){
                          print(phone.completeNumber);
                          setState(() {
                            comnumb=phone.completeNumber;
                            
                          });

                        },
                        onSaved: (phone){
                          print(phone!.completeNumber);
                          setState(() {
                            comnumb=phone.completeNumber;
                           
                          });

                        },
                        onCountryChanged: (country) {
                          print('Country changed to: ' + country.name);
                        },
                        onTap: (){
                        

                        },
                      ),
                    
            ),//5 contianer
    SizedBox(height: screensize.height*0.029,),
         Center(
          child: Container(
            margin: EdgeInsets.only(right: screensize.width*0.042,left: screensize.width*0.042
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
                  MaterialPageRoute(builder: (context) =>VerifyPhone()));
            },
              style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(splashcolor),
                  elevation: MaterialStateProperty.all(3)
              ),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child:   Text('Verify',
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
            ),
             ),
            ),
           ],
         ),
      ),
     ],
      ),
     )
   ),
    );
   }
   }