import 'package:ecampus/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Addingmembers extends StatefulWidget {
  const Addingmembers({super.key});

  @override
  State<Addingmembers> createState() => _AddingmembersState();
}

class _AddingmembersState extends State<Addingmembers> {
  final search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.029,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                child: Icon(
                  Icons.arrow_back,
                  color: splashcolor,
                ),
              ),
            ),
          ]),
          SizedBox(
            height: screensize.height * 0.0245,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.042),
                alignment: Alignment.topLeft,
                child: Text(
                  'Adding Members',
                  style: TextStyle(
                      //letterSpacing: 0.006,
                      //fontFamily: 'Satoshi-Variable',
                      color: filedcolor,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screensize.height * 0.01742,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.only(
                right: screensize.width * 0.042,
                left: screensize.width * 0.042),
            elevation: 0.5,
            child: TextFormField(
              controller: search,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  child: Center(child: SvgPicture.asset('images/qrsearch'),),
                ),
                suffixIconColor: filedcolor,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                prefixIconColor: filedcolor,
                prefixIcon:GestureDetector(onTap:(){},child: Icon(Icons.search_outlined,color: filedcolor,)) ,
                
                // prefix: IconButton(onPressed: (){}, 
                // icon: Icon(Icons.search_outlined,color: filedcolor,),),
                hintText: 'Search with student number',
                hintStyle: TextStyle(
                  color: Color(0xff99000000),
                  fontSize: 14
                ),
                suffix:GestureDetector(onTap:(){},child: SvgPicture.asset('images/qrsearch.svg'))
              ),
            ),
          )
        ],
      ),
    );
  }
}
