import 'package:ecampus/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
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
                          'images/photo.svg',
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
                      'Photo/Vidoe',
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
                          'images/vidoe.svg',
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
                      'Live Vidoe',
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
                          'images/verus.svg',
                          height: 25,
                          width: 25,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Versus',
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
                    CupertinoIcons.multiply,
                    color: splashcolor,
                  ),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.21,
              ),
              Center(
                child: Text(
                  'Create Post',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: Color(0xff15141F),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                width: screensize.width * 0.24,
              ),
              GestureDetector(
                onTap: () {
                  bottomsheet();
                },
                child: Text(
                  'Publish',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: Color(0xff8D8D8D),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.040,
          ),
          Row(
            children: [
              Container(
                height: 56,
                width: 56,
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: splashcolor),
                child: Center(
                  child: Text(
                    'JD',
                    style: TextStyle(
                        //letterSpacing: 0.006,
                        //fontFamily: 'Satoshi-Variable',
                        color: Color(0xffF9FAFB),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    width: screensize.width * 0.64,
                    child: Text(
                      'Jan Doe',
                      style: TextStyle(
                          //letterSpacing: 0.006,
                          //fontFamily: 'Satoshi-Variable',
                          color: filedcolor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                      width: screensize.width * 0.64,
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                'images/public.svg',
                                height: 28,
                                width: 66,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                'images/album.svg',
                                height: 28,
                                width: 66,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                'images/schedule.svg',
                                height: 28,
                                width: 66,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Text(
                  'What’s on your mind?',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: filedcolor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 13),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
