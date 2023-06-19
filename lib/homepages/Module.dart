import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Module2.dart';

class Module extends StatefulWidget {
  const Module({super.key});

  @override
  State<Module> createState() => _ModuleState();
}

class _ModuleState extends State<Module> {
  final search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                alignment: AlignmentDirectional.topStart,
                margin: EdgeInsets.only(
                    left: screensize.width * 0.037,
                    top: screensize.height * 0.029),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('images/cross.png')),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: screensize.width * 0.285,
                    top: screensize.height * 0.029),
                child: Text(
                  'Edit Module',
                  style: TextStyle(
                      color: Color(0xff15141F),
                      fontFamily: 'Satoshi Variable',
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.041,
          ),
          Card(
            color: Color(0xffE7EAEB),
            margin: EdgeInsets.only(
              left: screensize.width * 0.042,
              right: screensize.width * 0.042,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              onTap: () {
                Get.to(Module2());
              },
              controller: search,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xff576B74),
                ),
                hintText: 'Search modules',
                hintStyle: TextStyle(
                    color: Color(0xff576B74),
                    fontFamily: 'Satoshi Variable',
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
