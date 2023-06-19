import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Card(
          shape:RoundedRectangleBorder(borderRadius:
             BorderRadius.circular(8)),
             child: Column(
              children: [
               SizedBox(height: 13,),
               Row(
                 children: [
                   Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Image.asset('images/joe.png'),

                   ),
                   SizedBox(width: 2,),
                     Column(
               children: [
                 Text('Jane Doe           ',
                                    style:TextStyle(
                                        fontFamily: 'Satoshi-Variable',
                                        color:Colors.black,
                                        fontWeight:FontWeight.w500,
                                        fontSize:12
                                    ),
                                  ),
                                   Text('University name',
                                    style:TextStyle(
                                        fontFamily: 'Satoshi-Variable',
                                        color:splashgragy,
                                        fontWeight:FontWeight.w500,
                                        fontSize:12
                                    ),
                                  ),
               ],
               ),
                 ],
               ),

             
               SizedBox(height: 23,),
               Container(
                 margin: EdgeInsets.only(left: 8,right: 8),
              height:138,
                        width:327,
                      decoration:BoxDecoration(
                        image: DecorationImage(image: AssetImage(
                           'images/mpost.png',
                           
                        ),
                        fit: BoxFit.cover
                        ),
                        borderRadius: 
                        BorderRadius.circular(8)
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8,top: 14),
                            height: 18,
                            width: 205,
                            child: Image.asset('images/rock.png'),
                          ),
                        ],
                      ),
                      SizedBox(height: 23,),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              margin: EdgeInsets.only(left: 8,right: 2),
                              height: 20,
                              width: 18,
                              child: Image.asset('images/Vector.png'),
                            ),
                          ),
                          Text(' 931',
                         style: TextStyle(
                                        fontFamily: 'Satoshi-Variable',
                                        color:Colors.black,
                                        fontWeight:FontWeight.w500,
                                        fontSize:12
                                    ),
                                  ),
                                  SizedBox(width: 38,),
                                   GestureDetector(
                                    onTap: (){},
                                     child: Container(
                                                              // margin: EdgeInsets.only(left: 8),
                                                               height: 20,
                                                               width: 18,
                                                               child: Image.asset('images/heart.png'),
                                                             ),
                                   ),
                          Text(' 1.9k',
                         style: TextStyle(
                                        fontFamily: 'Satoshi-Variable',
                                        color:Colors.black,
                                        fontWeight:FontWeight.w500,
                                        fontSize:12
                                    ),
                                  ),
                                  SizedBox(width: 43,),
                                   Container(
                            margin: EdgeInsets.only(left: 8),
                            height: 20,
                            width: 18,
                            child: Image.asset('images/sav.png'),
                          ),
                           SizedBox(width: 43,),

                             GestureDetector(
                              onTap: (){},
                               child: Container(
                                                        height: 20,
                                                         width: 18,
                                                         child: Image.asset('images/uplo.png'),
                                                       ),
                             ),
                       
                        

                        ],
                      )
                     
              ],
             

             ),
      ),
    );
  }
}