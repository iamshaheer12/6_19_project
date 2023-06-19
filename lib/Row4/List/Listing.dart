import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../Ticket.dart';

class Listing2 extends StatefulWidget {
  const Listing2({super.key});

  @override
  State<Listing2> createState() => _Listing2State();
}

class _Listing2State extends State<Listing2> {
  bool? Group;
  bool online = false;
  bool inperson = false;
  String age = 'Age';
  String dresscode = 'Dress Code';
  final Sdate = TextEditingController();
  final Stime = TextEditingController();
  final Edate = TextEditingController();
  final Etime = TextEditingController();
  bool isdatepicked = false;
  pickerdata() async {
    await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1950),
      lastDate: DateTime(2004),
    ).then((value) {
      setState(() {
        isdatepicked = true;
      });
    });
  }

  bottomsheet() async {
    return showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        //backgroundColor: Col, // <-- SEE HERE
        builder: (context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 7),
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    'images/handle.svg',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.036,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.042),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededff),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'images/pinpost.svg',
                          fit: BoxFit.contain,
                          height: 25,
                          width: 25,
                          colorBlendMode: BlendMode.plus,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Ticket name',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Satoshi Variable',
                          color: Color(0xff0C212C),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.029,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(Ticket());
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.042),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffededff),
                        ),
                        child: Center(
                            child: Icon(
                          Icons.add,
                          color: splashcolor,
                          size: 30,
                        )),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Add ticket',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Satoshi Variable',
                            color: Color(0xff0C212C),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.029,
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.034,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    left: screensize.width * 0.042,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: splashcolor,
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.19,
              ),
              Text(
                'New Event',
                style: TextStyle(
                    //letterSpacing: 0.006,
                    //fontFamily: 'Satoshi-Variable',
                    color: filedcolor,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.066,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                  right: screensize.width * 0.042),
              height: screensize.height * 0.4,
              child: SvgPicture.asset('images/bigpicture.svg'),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Text(
                  'Event Type',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: filedcolor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.01847,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Text(
                  'Online',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: filedcolor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.032,
              ),
              Container(
                height: 20,
                width: 20,
                child: Radio(
                  value: online,
                  groupValue: Group,
                  onChanged: (bool? value) {
                    setState(() {
                      online = value!;
                    });
                  },
                ),
              ),
              Container(
                // alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: screensize.width * 0.030),
                child: Text(
                  'In Person',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: filedcolor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.032,
              ),
              Container(
                height: 20,
                width: 20,
                child: Radio(
                  value: inperson,
                  groupValue: Group,
                  onChanged: (bool? value) {
                    setState(() {
                      inperson = value!;
                    });
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.0172,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Text(
                  'Event Details',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: filedcolor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.019,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
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
                        'Event name',
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
                        'Placeholder Text',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: Color(0xff94A5AB),
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
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
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
                        'Location',
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
                        'Placeholder Text',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: Color(0xff94A5AB),
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: screensize.height * 0.0142,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: screensize.width * 0.448,
              margin: EdgeInsets.only(left: screensize.width * 0.042, right: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: DropdownButton(
                
                alignment: Alignment.center,
                borderRadius: BorderRadius.circular(12),
                value: age,
                items: <String>['Age', '10', '20', '30', '40']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    alignment: Alignment.center,
                    value: value,
                    child: Center(
                      child: Text(
                        value,
                        style: TextStyle(
                            color: Color(0xff576B74),
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    age = newValue!;
                  });
                },
              ),
            ),
            Container(
              width: screensize.width * 0.448,
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: DropdownButton(
                value: dresscode,
                items: <String>[
                  'Dress Code',
                  '14340',
                  '254530',
                  '353530',
                  '4434340'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Center(
                      child: Text(
                        value,
                        style: TextStyle(
                            color: Color(0xff576B74),
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dresscode = newValue!;
                  });
                },
              ),
            ),
          ]),
          SizedBox(
            height: screensize.height * 0.0172,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Text(
                  'Starts',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: filedcolor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.019,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: screensize.width * 0.448,
                margin:
                    EdgeInsets.only(left: screensize.width * 0.042, right: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: TextFormField(
                  //textAlign: TextAlign.left,
                  onTap: () {
                    pickerdata();
                  },
                  controller: Sdate,
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.calendar_month_outlined,
                          color: splashcolor,
                        ),
                      ),
                      labelText: 'Start Date',
                      labelStyle: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: splashcolor,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                      // errorText: '',

                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          width: 2,
                          color: splashcolor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.1)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.1)),
                      contentPadding: EdgeInsets.only(
                        left: 8,
                      ),
                      hintText: isdatepicked == true
                          ? '${DateTime.now()}'
                          : '     Start date',
                      hintStyle: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: adidaslogocfdolors,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      )),
                ),
              ),
              Container(
                width: screensize.width * 0.448,
                margin:
                    EdgeInsets.only(left: screensize.width * 0.022, right: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: TextFormField(
                  //textAlign: TextAlign.left,
                  controller: Stime,
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.schedule_outlined,
                          color: splashcolor,
                        ),
                      ),
                      labelText: 'Start time',
                      labelStyle: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: splashcolor,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                      // errorText: '',

                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          width: 2,
                          color: splashcolor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.1)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.1)),
                      contentPadding: EdgeInsets.only(
                        left: 8,
                      ),
                      hintText: 'Start time',
                      hintStyle: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: adidaslogocfdolors,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.0172,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Text(
                  'Ends',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: filedcolor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.019,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: screensize.width * 0.448,
                margin:
                    EdgeInsets.only(left: screensize.width * 0.042, right: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: TextFormField(
                  //textAlign: TextAlign.left,
                  onTap: () {
                    pickerdata();
                  },
                  controller: Edate,
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.calendar_month_outlined,
                          color: splashcolor,
                        ),
                      ),
                      labelText: 'End Date',
                      labelStyle: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: splashcolor,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                      // errorText: '',

                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          width: 2,
                          color: splashcolor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.1)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.1)),
                      contentPadding: EdgeInsets.only(
                        left: 8,
                      ),
                      hintText: isdatepicked == true
                          ? '${DateTime.now()}'
                          : '     End date',
                      hintStyle: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: adidaslogocfdolors,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      )),
                ),
              ),
              Container(
                width: screensize.width * 0.448,
                margin:
                    EdgeInsets.only(left: screensize.width * 0.022, right: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: TextFormField(
                  //textAlign: TextAlign.left,
                  controller: Etime,
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.schedule_outlined,
                          color: splashcolor,
                        ),
                      ),
                      labelText: 'End time',
                      labelStyle: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: splashcolor,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                      // errorText: '',

                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          width: 2,
                          color: splashcolor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.1)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.1)),
                      contentPadding: EdgeInsets.only(
                        left: 8,
                      ),
                      hintText: 'End time',
                      hintStyle: TextStyle(
                        //fontFamily: 'Satoshi-Variable',
                        color: adidaslogocfdolors,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.0172,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Text(
                  'Ticket Details',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: filedcolor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Icon(
                Icons.arrow_drop_down,
                color: splashcolor,
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.019,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
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
                        'Description',
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
                        'Placeholder Text',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: Color(0xff94A5AB),
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: screensize.height * 0.036,
          ),
          Container(
            margin: EdgeInsets.only(
              right: screensize.width * 0.042,
              left: screensize.width * 0.042,
              //top: 15,
            ),
            height: screensize.height * 0.059,
            width: screensize.width * 0.91,
            decoration: BoxDecoration(
                color: splashcolor,
                border: Border.all(
                  color: splashcolor,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: ElevatedButton(
              onPressed: () {
                bottomsheet();
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(splashcolor),
                  elevation: MaterialStateProperty.all(3)),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Publish',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 8,),
        ],
      ),
    );
  }
}
