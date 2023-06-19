import 'package:flutter/material.dart';
class event2 extends StatelessWidget {
 // const event({super.key});

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
                           'images/even.png',
                           
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
                            child: Text('Evennt',
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