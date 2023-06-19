import 'package:flutter/material.dart';
import '../../color.dart';

class Accomo extends StatelessWidget {
  // const Accomo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Card(
          shape:RoundedRectangleBorder(borderRadius:
             BorderRadius.circular(8)),
             elevation: 0,
             child:Column(
              children: [
                Container(
                  height: 116,
                  width: 222,
                  decoration:BoxDecoration(
                        image: DecorationImage(image: AssetImage(
                           'images/Accomo.png',
                           
                        ),
                        fit: BoxFit.cover
                        ),
                        borderRadius: 
                        BorderRadius.circular(8)
                      ),
                ),
                SizedBox(height: 14,),
                Row(
                  children: [

                    Column(
                      children: [
                        SizedBox(height: 5,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          child: Text('Accomodation Name  ',
                             style:TextStyle(
                                 fontFamily: 'Satoshi-Variable',
                                 color: Color(0xFF131313),
                                 fontWeight:FontWeight.w500,
                                 fontSize: 11
                             ),
                           ),  
                        ),
                        SizedBox(height: 4,),
                       
                         Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: splashgragy,
                          size: 17,
                        ),
                        Text('College Road, Cork',
                                    style:TextStyle(
                                        fontFamily: 'Satoshi-Variable',
                                        color:splashgragy,
                                        fontWeight:FontWeight.w500,
                                        fontSize:11
                                    ),
                                  ),
                      ],
                    ),

                      ],
                    ),
                    SizedBox(width: 20,),
                    GestureDetector(
                      onTap: (){},

                      child: Container(
                        height:31 ,
                        width: 31,
                        margin: EdgeInsets.only(top:10),
                         decoration:BoxDecoration(
                          image: DecorationImage(image: AssetImage(
                             'images/Frame.png',
                             
                          ),
                          fit: BoxFit.cover
                          ),
                          borderRadius: 
                          BorderRadius.circular(8)
                        ),
                    
                      ),
                    )
                  ],
                )
              ],
             ) ,
      )
      ,
    );
  }
}
class Accomo2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return  Container(
       width: MediaQuery.of(context).size.width*0.9573,
       height: MediaQuery.of(context).size.height*0.224 ,

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
             height: MediaQuery.of(context).size.height*0.224 ,
            width:MediaQuery.of(context).size.width*0.592 ,
            child: Accomo(),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.032 ,),
            Container(
             height: MediaQuery.of(context).size.height*0.224 ,
            width:MediaQuery.of(context).size.width*0.592 ,
            child:  Accomo(),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.032 ,),
            Container(
              height: MediaQuery.of(context).size.height*0.224 ,
            width:MediaQuery.of(context).size.width*0.592 ,
            child: Accomo(),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.032 ,),
            Container(
             height: MediaQuery.of(context).size.height*0.224 ,
            width:MediaQuery.of(context).size.width*0.592 ,
            child:  Accomo(),
          ),
        ],
      ),
    );
  }
}