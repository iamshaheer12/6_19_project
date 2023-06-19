import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Addproduct extends StatefulWidget {
  const Addproduct({super.key});

  @override
  State<Addproduct> createState() => _AddproductState();
}

class _AddproductState extends State<Addproduct> {
  var item = 'Standar Pricing';
  var item1 = [
    'Standar Pricing',
    'the theme',
    'equally filled'

  ];
  var price = '\$ 0.00';
  var price1 = ['\$ 0.00', '1.00', '2.00'];
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.039,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'X',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Satoshi Variable',
                          color: splashcolor,
                          fontWeight: FontWeight.w700),
                    )),
              ),
              SizedBox(
                width: screensize.width * 0.266,
              ),
              Container(
                child: Text(
                  'Add a product',
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Satoshi Variable',
                      color: filedcolor,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.066,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              child: SvgPicture.asset(
                'images/Container.svg',
              ),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.032,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              child: Text(
                'Product details',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Satoshi Variable',
                    color: filedcolor,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ]),
          SizedBox(
            height: screensize.height * 0.028,
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
                        'Name',
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
                        'Placeholder text',
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
            height: screensize.height * 0.0073,
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
                          bottom: screensize.height * 0.089,
                          top: screensize.height * 0.006),
                      child: Text(
                        'Placeholder text',
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
          SizedBox(
            height: screensize.height * 0.020,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              child: Text(
                'Additional option ',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Satoshi Variable',
                    color: splashcolor,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ]),
          SizedBox(
            height: screensize.height * 0.020,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              child: Text(
                'Pricing Model',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Satoshi Variable',
                    color: filedcolor,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ]),
          SizedBox(
            height: 4,
          ),
          Card(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: accountlightfinaltxtcolors),
                borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            elevation: 0.5,
            child: DropdownButton(
              alignment: Alignment.center,
              icon: Icon(Icons.arrow_drop_down_sharp),
              iconSize: 35,
              iconEnabledColor: Color(0xff787878),
              items: item1
                  .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: filedcolor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700),
                            ),
                          ))
                  .toList(),
              value: item,
              onChanged: (String? newValue) => setState(() => item = newValue!),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width * 0.042),
              child: Text(
                'Price',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Satoshi Variable',
                    color: filedcolor,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ]),
          SizedBox(
            height: 4,
          ),
          // Card(
          //   shape: RoundedRectangleBorder(
          //       side: BorderSide(width: 0.4
          //       , color: accountlightfinaltxtcolors),
          //       borderRadius: BorderRadius.circular(8)),
          //   margin: EdgeInsets.only(
          //       right: screensize.width * 0.042,
          //       left: screensize.width * 0.042),
          //   elevation: 0.5,
          Container(
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 0.5,color: accountlightfinaltxtcolors)
            ),
           child:
             DropdownButton(
              alignment: Alignment.center,
              // icon: Icon(Icons.arrow_drop_down_sharp),
              // iconSize: 35,
              // iconEnabledColor: Color(0xff787878),
              items: price1
                  .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                            value: price,
                            child: Text(
                              price,
                              style: TextStyle(
                                  color: filedcolor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700),
                            ),
                          ))
                  .toList(),
              value: price,
              onChanged: (String? newValue) => setState(() => price = newValue!),
            ),
          ),
        ],
      ),
    );
  }
}
