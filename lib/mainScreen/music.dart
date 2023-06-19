import 'dart:math';

import 'package:flutter/material.dart';
class MusicVido extends StatelessWidget {
  //const MusicVido({super.key});

  @override
  Widget build(BuildContext context) {
      var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        
        child: Card(
         shape:RoundedRectangleBorder(borderRadius:
             BorderRadius.circular(8)),
             child: Container(
              height:137,
                        width:111.35,
                      decoration:BoxDecoration(
                        image: DecorationImage(image: AssetImage(
                           'images/Music2.jpeg',
                           
                        ),
                        fit: BoxFit.cover
                        ),
                        borderRadius: 
                        BorderRadius.circular(8)
                      ),
                      // Image.asset(
                      //     'images/Music2.jpeg'
                      //   ),
               child: Column(
                children: [
                  
                      
                      Container(
                        margin: EdgeInsets.only(left: 4,
                        top: 6),
                        decoration: BoxDecoration(
                          color: Colors.transparent
                        ),
                        child: Row(
                          children: [
                          
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                SizedBox(width: 1,),
                                Text(
                              '90K',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
             
                              ),
                            ),
                              
                            SizedBox(width: 27.24,),
                            Container(
                              height: 14.7,
                              width: 33.07,
                              child: Image.asset(
                                'images/Music1.png',
                              //  height: Height*0.103,
                              // width: Width*0.296,
                              ),
                            )
                            
                          ],
                        ),
             
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 85,
                        left: 4.05),
                        child: Text(
                          'Live Music Tonight',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
             
                          ),
                        ),
                      )
                      
                    ],
                
                
               ),
             ),
        ),
      )
    );
  }
}