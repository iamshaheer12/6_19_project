
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';

// import 'navcontroller.dart';
// class CustomNavigation extends StatelessWidget {
//   CustomNavigation({Key? key, Function(int index)? onTab}) : super(key: key);
//   final NavbarController _navbarController = Get.put(NavbarController());

//   @override
//   Widget build(BuildContext context) {
//     var screensize=MediaQuery.of(context).size;

//     return Obx(() => Container(
//       padding: EdgeInsets.all(0.7),
//       height:screensize.height*0.05,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(0),
//         color:Colors.white,
//       ),
//       width: Get.width,
//       margin: const EdgeInsets.only(bottom: 2,right: 2,left: 2,top: 2),
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             SizedBox(width: 5,),
//             GestureDetector(
//               child:customRoundButton(icon: _navbarController.index==0?FontAwesomeIcons.shop:
//               FontAwesomeIcons.shopLock,text: 'المعارض'
//               ),
//               onTap:(){
//                 _navbarController.next(0);
//               },
//             ),
//             SizedBox(width: 5,),
//             GestureDetector(
//               child:customRoundButton(icon: _navbarController.index==1?FontAwesomeIcons.globe
//                   :FontAwesomeIcons.globe,text: 'تصميم مواقع'),
//               onTap:(){
//                 _navbarController.next(1);
//               },
//             ),
//             SizedBox(width: 15,),
//             GestureDetector(
//               child:customRoundButton(icon: _navbarController.index==2?
//               FontAwesomeIcons.paperPlane
//                   :FontAwesomeIcons.solidPaperPlane,text: 'الاستشارات'),
//               onTap:(){
//                 _navbarController.next(2);
//               },
//             ),
//             SizedBox(width: 5,),
//             GestureDetector(
//               child:customRoundButton(icon: _navbarController.index==3?
//               FontAwesomeIcons.futbol
//                   :FontAwesomeIcons.solidFutbol,text: 'وكالات لاعبين'),
//               onTap:(){
//                 _navbarController.next(3);
//               },
//             ),
//             SizedBox(width: 5,),
//             GestureDetector(
//               child:customRoundButton(icon: _navbarController.index==4?
//               FontAwesomeIcons.book
//                   :FontAwesomeIcons.bookOpen,text: 'منح دراسية'),
//               onTap:(){
//                 _navbarController.next(4);
//               },
//             ),
//             SizedBox(width: 5,),
//           ],
//         ),
//       ),
//     ));
//   }
// }
