import 'package:flutter/material.dart';
import '../../../color.dart';
import 'package:readmore/readmore.dart';
class jobs extends StatelessWidget {
  const jobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
        shape:RoundedRectangleBorder(borderRadius:
             BorderRadius.circular(8)),
             child: Container(
              height: 134,
              width:202,
               child: Column(
                children: [
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        margin: EdgeInsets.only(left: 5),
                        decoration:BoxDecoration(
                          image: DecorationImage(image: AssetImage(
                             'images/twit.png',
                             
                          ),
                          fit: BoxFit.cover
                          ),
                          borderRadius: 
                          BorderRadius.circular(8)
                        ),
             
                      ),
                      SizedBox(width: 6,),
                      Column(
                        children: [
                          Text('Twitter Inc          ',
                                  style:TextStyle(
                                      fontFamily: 'Satoshi-Variable',
                                      color:Colors.black,
                                      fontWeight:FontWeight.w500,
                                      fontSize:12
                                  ),
                                ),
                                Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: splashgragy,
                            size: 16,
                          ),
                          Text('California, USA',
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
                      SizedBox(width: 37,),
                      GestureDetector(
                        child: Container(
                          width: 12.5,
                          height:15.63,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('images/save.png'))
                          ),
                        ),
                      )
                    ],
             
                  ),
                  SizedBox(height: 8,),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5,right: 8),
                        width: 220,
                        height: 36,
                        child: ReadMoreText(
               'We need UX/UI designer in our that is the \n company who can d0 with specific quilitie We need UX/UI designer in our that is the ',
               trimLines: 2,
               style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w500,
               color: splashgragy
               ),
               //colorClickableText: Colors.pink,
               trimMode: TrimMode.Line,
               trimCollapsedText: 'Show more',
               trimExpandedText: 'Show less',
               moreStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,
               color: splashcolor),
             ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 16,
                        width: 63,
                        child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: splashgragy2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)

                          )
                        ),
                        child: Text('Remote',style: TextStyle(
                          color: Colors.black,
                          fontSize: 8


                        ),)),
                        margin: EdgeInsets.only(left: 8,bottom: 2),
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(8),
                        //     image: DecorationImage(image: AssetImage('images/remote.png'),
                        //     fit: BoxFit.cover)
                        //   ),
                      ),
                        Container(
                          height: 18,
                        width: 68,
                      child:  ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: splashgragy2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)

                          )
                        ),
                        child: Text('Full time',style: TextStyle(
                          color: Colors.black,
                          fontSize: 8


                        ),)),
                        margin: EdgeInsets.only(left: 4,bottom: 2),
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(8),
                        //     image: DecorationImage(image: AssetImage('images/full.png'),
                        //     fit: BoxFit.cover)
                        //   ),
                      ),
                       Container(
                        height: 21,
                        width: 55,
                        child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: splashgragy2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)

                          )
                        ),
                        child: Text('Apply',style: TextStyle(
                          color: splashcolor,
                          fontSize: 8


                        ),)),
                        margin: EdgeInsets.only(left: 51,bottom: 2),
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(8),
                        //     image: DecorationImage(image: AssetImage('images/appl.png'),
                        //     fit: BoxFit.cover)
                        //   ),
                      ),
                      
                    ],
                  )
             
                ],
             
               ),
             ),
    );
  }
}