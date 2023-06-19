import 'package:flutter/material.dart';


class Discposter extends StatelessWidget {
  const Discposter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Card(
         shape:RoundedRectangleBorder(borderRadius:
             BorderRadius.circular(8)),
             child: Container(
               height:103,
                        width:103,
                      decoration:BoxDecoration(
                        image: DecorationImage(image: AssetImage(
                           'images/Rectangle 2.png',
                           
                        ),
                        fit: BoxFit.cover
                        ),
                        borderRadius: 
                        BorderRadius.circular(8)
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 8,
                              top: 80,
                            ),
                            child: Text('Berlin',
                                    style:TextStyle(
                                        fontFamily: 'Satoshi-Variable',
                                        color:Colors.white,
                                        fontWeight:FontWeight.w500,
                                        fontSize:13
                                    ),
                                  ),
                          )
                        ],
                      ),
             ),
      )
      ,
    );
  }
}
class discover extends StatelessWidget {
  const discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       width: MediaQuery.of(context).size.width*0.9573,
       height: MediaQuery.of(context).size.height*0.126 ,

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.126 ,
            width:MediaQuery.of(context).size.width*0.274 ,
            child: Discposter(),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.032 ,),
            Container(
            height: MediaQuery.of(context).size.height*0.126 ,
            width:MediaQuery.of(context).size.width*0.274 ,
            child: Discposter(),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.032 ,),
            Container(
            height: MediaQuery.of(context).size.height*0.126 ,
            width:MediaQuery.of(context).size.width*0.274 ,
            child: Discposter(),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.032 ,),
            Container(
            height: MediaQuery.of(context).size.height*0.126 ,
            width:MediaQuery.of(context).size.width*0.274 ,
            child: Discposter(),
          ),
        ],
      ),
    );
  }
}