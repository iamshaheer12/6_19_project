import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../studentpage/ui/widget/chatwidget.dart';
import 'sell.dart';

class chatpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _chatpagestate();
  }
}

class _chatpagestate extends State<chatpage> {
  final search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.003,
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(left: screensize.width * 0.042, top: 15),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('images/mvc/coloredbackarrow.png')),
          ),
          SizedBox(
            height: screensize.height * 0.006,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Chats',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: filedcolor,
                        fontWeight: FontWeight.w800,
                        fontSize: 28),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                 
                },
                child: Container(
                  margin: EdgeInsets.only(right: screensize.width * 0.06),
                  child: SvgPicture.asset(
                    'images/editdoc.svg',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.024,
          ),
          Container(
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
              right: screensize.width * 0.042,
            ),
            height: screensize.height * 0.050,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              controller: search,
              decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff94A5AB),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      color: Color(0xff808C91),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.040,
          ),
          Card(
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.only(
                left: screensize.width * 0.042,
                right: screensize.width * 0.042),
            child: Container(
              width: screensize.width,
              margin: EdgeInsets.only(
                  left: screensize.width * 0.042,
                  right: screensize.width * 0.042,
                  top: screensize.height * 0.018,
                  bottom: screensize.height * 0.018),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.1,
                  color: Colors.white60,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    litchatbuild(
                      text: 'Steve Solomon              ',
                      imgtxt: 'SS',
                      pageroute: (){},
                      text2: '  Hallo Jane, I hope you are...',
                    ),
                    Divider(
                      height: screensize.height * 0.018,
                    ),
                    litchatbuild(
                      text: 'Michael Smith               ',
                      imgtxt: 'MS',
                      pageroute: (){},
                      text2: '  Hallo Jane, I hope you are...',
                    ),
                    Divider(
                      height: screensize.height * 0.018,
                    ),
                    litchatbuild(
                      text: 'Conor Klein                   ',
                      imgtxt: 'CK',
                      pageroute: (){},
                      text2: '  Hallo Jane, I hope you are...',
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    ///***********************************************
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
