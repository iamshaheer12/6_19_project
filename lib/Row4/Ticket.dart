import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:ecampus/Row4/Home.dart';
import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Ticket extends StatefulWidget {
  @override
  State<Ticket> createState() => _updatePageinfoState();
}

class _updatePageinfoState extends State<Ticket> {
  final price = TextEditingController();
  final quantity = TextEditingController();
  final maxticket = TextEditingController();
  final offer = TextEditingController();
  final Sdate = TextEditingController();
  final Stime = TextEditingController();
  final Edate = TextEditingController();
  final Etime = TextEditingController();
  bool? Group;
  bool non = true;
  bool nom = false;
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

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Card(
              margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                  right: screensize.width * 0.042,
                  top: screensize.height * 0.029),
              child: Column(children: [
                SizedBox(
                  height: screensize.height * 0.0295,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.032,
                      ),
                      child: Text(
                        'Ticket',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xff111827),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screensize.height * 0.0123,
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.only(
                    left: screensize.width * 0.032,
                   right: screensize.width * 0.024,
                  ),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(8),
                  //   border: Border.all(color: Color(0xffE7EAEB), width: 1),
                  //   // color: Colors.white
                  // ),
                  child: DropdownButton2(
                    customButton: Card(
//margin: EdgeInsets.only(left: screensize.width*0.042,right: screensize.width*0.042),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 12,bottom: 12),
                              margin: EdgeInsets.only(
                                  left: screensize.width * 0.042),
                              child: Text(
                                'Ticket',
                                style: TextStyle(
                                    //letterSpacing: 0.006,
                                    //fontFamily: 'Satoshi-Variable',
                                    color: Color(0xff6B7280),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              ),
                            ),
                            SizedBox(
                              width: screensize.width * 0.60,
                            ),
                            Icon(
                              Icons.arrow_drop_down_outlined,
                              color: splashcolor,
                            )
                          ]),
                    ),
                    items: [
                      ...MenuItems.firstItems.map(
                        (item) => DropdownMenuItem<MenuItem>(
                          value: item,
                          child: MenuItems.buildItem(item),
                        ),
                      ),
                      //const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
                      ...MenuItems.secondItems.map(
                        (item) => DropdownMenuItem<MenuItem>(
                          value: item,
                          child: MenuItems.buildItem1(item),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      MenuItems.onChanged(context, value as MenuItem);
                    },
                    dropdownStyleData: DropdownStyleData(
                      width: 307,
                      padding: EdgeInsets.only(
                          left: screensize.width * 0.042,
                          right: screensize.width * 0.042,
                          top: screensize.height * 0.017),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      elevation: 8,
                      offset: const Offset(0, 8),
                    ),
                    menuItemStyleData: MenuItemStyleData(
                      // customHeights: [
                      //   ...List<double>.filled(MenuItems.firstItems.length, 48),
                      //   8,
                      //   ...List<double>.filled(MenuItems.secondItems.length, 48),
                      // ],
                      padding: EdgeInsets.only(
                          left: screensize.width * 0.042,
                          right: screensize.width * 0.042),
                    ),
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.01477,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.032,
                      ),
                      child: Text(
                        'Audience',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xff111827),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screensize.height * 0.0123,
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.only(
                    left: screensize.width * 0.032,
                    right: screensize.width * 0.024,
                  ),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(8),
                  //   border: Border.all(color: Color(0xffE7EAEB), width: 1),
                  //   // color: Colors.white
                  // ),
                  child: DropdownButton2(
                    customButton: Card(
//margin: EdgeInsets.only(left: screensize.width*0.042,right: screensize.width*0.042),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 12,bottom: 12),
                              margin: EdgeInsets.only(
                                  left: screensize.width * 0.042),
                              child: Text(
                                'Select Audience',
                                style: TextStyle(
                                    //letterSpacing: 0.006,
                                    //fontFamily: 'Satoshi-Variable',
                                    color: Color(0xff6B7280),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              ),
                            ),
                            SizedBox(
                              width: screensize.width * 0.42,
                            ),
                            Icon(
                              Icons.arrow_drop_down_outlined,
                              color: splashcolor,
                            )
                          ]),
                    ),
                    items: [
                      ...MenuItems.thirdItems.map(
                        (item) => DropdownMenuItem<MenuItem>(
                          value: item,
                          child: MenuItems.buildItem(item),
                        ),
                      ),
                      //const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
                      ...MenuItems.FourthItems.map(
                        (item) => DropdownMenuItem<MenuItem>(
                          value: item,
                          child: MenuItems.buildItem1(item),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      MenuItems.onChanged(context, value as MenuItem);
                    },
                    dropdownStyleData: DropdownStyleData(
                      width: 307,
                      padding: EdgeInsets.only(
                          left: screensize.width * 0.042,
                          right: screensize.width * 0.042,
                          top: screensize.height * 0.017),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      elevation: 8,
                      offset: const Offset(0, 8),
                    ),
                    menuItemStyleData: MenuItemStyleData(
                      // customHeights: [
                      //   ...List<double>.filled(MenuItems.firstItems.length, 48),
                      //   8,
                      //   ...List<double>.filled(MenuItems.secondItems.length, 48),
                      // ],
                      padding: EdgeInsets.only(
                          left: screensize.width * 0.042,
                          right: screensize.width * 0.042),
                    ),
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.0147,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.028,
                      ),
                      height: screensize.height * 0.117,
                      width: screensize.width * 0.416,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Price',
                              style: TextStyle(
                                  //letterSpacing: 0.006,
                                  //fontFamily: 'Satoshi-Variable',
                                  color: Color(0xff111827),
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            height: screensize.height * 0.0123,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: BorderSide(
                                    color: Color(0xffE7EAEB), width: 1)),
                            child: TextFormField(
                                controller: price,
                                decoration: InputDecoration(

                                    // errorText: '',

                                    focusedBorder: OutlineInputBorder(
                                      //borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: splashcolor,
                                      ),
                                    ),
                                    enabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                      left: 8,
                                    ),
                                    hintText: '   Ticket',
                                    hintStyle: TextStyle(
                                      //fontFamily: 'Satoshi-Variable',
                                      color: Color(0xff6B7280),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13,
                                    ))),
                          )
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   width: screensize.width * 0.01,
                    // ),
                    Container(
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.032,
                    right: screensize.width * 0.024,

                      ),
                      height: screensize.height * 0.117,
                      width: screensize.width * 0.416,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Tot.Quantity',
                              style: TextStyle(
                                  //letterSpacing: 0.006,
                                  //fontFamily: 'Satoshi-Variable',
                                  color: Color(0xff111827),
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            height: screensize.height * 0.0123,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: BorderSide(
                                    color: Color(0xffE7EAEB), width: 1)),
                            child: TextFormField(
                                controller: price,
                                decoration: InputDecoration(

                                    // errorText: '',

                                    focusedBorder: OutlineInputBorder(
                                      //borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: splashcolor,
                                      ),
                                    ),
                                    enabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                      left: 8,
                                    ),
                                    hintText: '   0',
                                    hintStyle: TextStyle(
                                      //fontFamily: 'Satoshi-Variable',
                                      color: Color(0xff6B7280),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13,
                                    ))),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: screensize.height * 0.01477,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.032,
                      ),
                      child: Text(
                        'Max tickets per order',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xff111827),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screensize.height * 0.0135,
                ),
                Card(
                  margin: EdgeInsets.only(
                    left: screensize.width * 0.032,
                    right: screensize.width * 0.024,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Color(0xffE7EAEB), width: 1)),
                  child: TextFormField(
                      controller: maxticket,
                      decoration: InputDecoration(

                          // errorText: '',

                          focusedBorder: OutlineInputBorder(
                            //borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              width: 2,
                              color: splashcolor,
                            ),
                          ),
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            left: 8,
                          ),
                          hintText: '   10',
                          hintStyle: TextStyle(
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xff6B7280),
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ))),
                ),
                SizedBox(
                  height: screensize.height * 0.01477,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.032,
                      ),
                      child: Text(
                        'Offer Description',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xff111827),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screensize.height * 0.0135,
                ),
                Container(
                  height: screensize.height * 0.4359,
                    margin: EdgeInsets.only(
                      left: screensize.width * 0.032,
                      right: screensize.width * 0.024,
                    ),
                    decoration: BoxDecoration(
                       shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xffE7EAEB), width: 1

                        )
                        ),
                        //side: BorderSide(color: Color(0xffE7EAEB), width: 1
                    
                  child: 
                  // Card(
                  //   margin: EdgeInsets.only(
                  //     left: screensize.width * 0.032,
                  //     right: screensize.width * 0.024,
                  //   ),
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(8),
                  //       side: BorderSide(color: Color(0xffE7EAEB), width: 1)),
                  //   child:
                     TextFormField(
                      maxLines: 18,
                        controller: offer,
                        decoration: InputDecoration(

                            // errorText: '',

                            focusedBorder: OutlineInputBorder(
                              //borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                width: 2,
                                color: splashcolor,
                              ),
                            ),
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                              left: 8,
                            ),
                            hintText: 'Tell people what\'s include in offer',
                            hintStyle: TextStyle(
                              //fontFamily: 'Satoshi-Variable',
                              color: Color(0xff6B7280),
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                            ))),
                  ),
               // ),
                SizedBox(height: screensize.height * 0.0172),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: screensize.width * 0.032),
                      child: Text(
                        'Starts',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xff111827),
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
                      width: screensize.width * 0.41,
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.032, right: 5),
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
                                borderSide: BorderSide(
                                    color: Colors.black, width: 0.1)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black, width: 0.1)),
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
                      width: screensize.width * 0.41,
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.005, right: 5),
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
                                borderSide: BorderSide(
                                    color: Colors.black, width: 0.1)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black, width: 0.1)),
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
                      margin: EdgeInsets.only(left: screensize.width * 0.032),
                      child: Text(
                        'Ends',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xff111827),
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
                      width: screensize.width * 0.41,
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.032, right: 5),
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
                                borderSide: BorderSide(
                                    color: Colors.black, width: 0.1)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black, width: 0.1)),
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
                      width: screensize.width * 0.41,
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.005, right: 5),
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
                                borderSide: BorderSide(
                                    color: Colors.black, width: 0.1)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black, width: 0.1)),
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
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: screensize.width * 0.032),

                      child: Radio(
                        value: non,
                        groupValue: Group,
                        onChanged: (bool? value) {
                          setState(() {
                            non = value!;
                          });
                        },
                      ),
                    ),
                      
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: screensize.width * 0.032),
                      child: Text(
                        'Non-Nominative tickets',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xff6B7280),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
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
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: screensize.width * 0.032),

                      child: Radio(
                        value: nom,
                        groupValue: Group,
                        onChanged: (bool? value) {
                          setState(() {
                            nom = value!;
                          });
                        },
                      ),
                    ),
                      
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: screensize.width * 0.032),
                      child: Text(
                        'Nominative tickets',
                        style: TextStyle(
                            //letterSpacing: 0.006,
                            //fontFamily: 'Satoshi-Variable',
                            color: Color(0xff6B7280),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
                    SizedBox(height: screensize.height*0.036,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
            margin: EdgeInsets.only(
                   // right: screensize.width * 0.032,
                    left:  screensize.width  * 0.032,
                    //top: 15,
                                ),
            height: screensize.height * 0.059,
            width:  screensize.width  * 0.325,
            decoration: BoxDecoration(
                    color: splashcolor,
                    border: Border.all(
                      color: splashcolor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
            child: ElevatedButton(
                  onPressed: () {
                   
                   
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
          SizedBox(width: screensize.width*0.49,),
          GestureDetector(onTap: () {
            
          },
            child: SvgPicture.asset('images/delete.svg'))
                ],
              ),
              SizedBox(height: 10,)

              ])),
              SizedBox(height: 15,)
        ],
      ),
    );
  }
}

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [first, Second, third, fourth];
  static const List<MenuItem> secondItems = [addacount];
  static const List<MenuItem> thirdItems = [ticket];
  static const List<MenuItem> FourthItems = [addticket];

  static const first = MenuItem(text: 'First year', icon: Icons.home);
  static const Second = MenuItem(text: 'Second year', icon: Icons.share);
  static const third = MenuItem(text: 'Third year', icon: Icons.share);
  static const fourth = MenuItem(text: 'Last year', icon: Icons.share);

  static const ticket = MenuItem(text: 'Ticket name', icon: Icons.share);
  static const addticket = MenuItem(text: 'Custom', icon: Icons.logout);

  static const addacount = MenuItem(text: 'Custom', icon: Icons.logout);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffEDEDFE),
          ),
          child: Center(
            child: SvgPicture.asset('images/Audience.svg'),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: TextStyle(
            color: filedcolor,
          ),
        ),
      ],
    );
  }

  static Widget buildItem2(MenuItem item) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffEDEDFE),
          ),
          child: Center(
            child: SvgPicture.asset('images/ticket.svg'),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: TextStyle(
            color: filedcolor,
          ),
        ),
      ],
    );
  }

  static Widget buildItem1(MenuItem item) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffEDEDFE),
          ),
          child: Center(
              child: Icon(
            Icons.add,
            color: filedcolor,
          )),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          item.text,
          style: TextStyle(
            color: splashcolor,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.first:
        //Do something
        break;

      case MenuItems.Second:
        //Do something
        break;
      case MenuItems.third:
        //Do something
        break;
      case MenuItems.fourth:
        //Do something
        break;
      case MenuItems.addacount:
        //Do something
        break;
    }
  }
}
