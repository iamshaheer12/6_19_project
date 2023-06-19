// import 'package:flutter/material.dart';
// import 'package:flutter_screen_lock/flutter_screen_lock.dart';
// import 'pack/svg.dart';

// import '../color.dart';
// class LoginFaceid extends StatefulWidget {
//   const LoginFaceid({super.key});

//   @override
//   State<LoginFaceid> createState() => _LoginFaceidState();
// }

// class _LoginFaceidState extends State<LoginFaceid> {
//   @override
//   Widget build(BuildContext context) {
//      var screensize = MediaQuery.of(context).size;
//     return Scaffold(
//       body: ListView(
//         children: [
          
//            SizedBox(height: screensize.height*0.034,),
//             Container(
//               alignment: Alignment.topLeft,
//             margin: EdgeInsets.only(
//               left: screensize.width * 0.042,
//             ),
//             child: IconButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: Icon(
//                   Icons.arrow_back,
//                   color: splashcolor,
//                 )),
//           ),
//            SizedBox(height: screensize.height*0.052,),
//             Container(
//                 alignment:Alignment.center,
//                 child: Text(
//                   'Login to eCampus',
//                   style: TextStyle(
//                       //letterSpacing: 0.006,
//                       //fontFamily: 'Satoshi-Variable',
//                       color: filedcolor,
//                       fontStyle: FontStyle.normal,
//                       fontWeight: FontWeight.w500,
//                       fontSize: 16),
//                 ),
//               ),
//                 SizedBox(height: screensize.height*0.147,),
//                  Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height * 0.80,
//               child:screenLock(
//   context: context,
//   title: Text('change title'),
//   confirmTitle: Text('change confirm title'),
//   correctString: '1234',
//   confirmation: true,
//   screenLockConfig: ScreenLockConfig(
//     backgroundColor: Colors.deepOrange,
//   ),
//   secretsConfig: SecretsConfig(
//     spacing: 15, // or spacingRatio
//     padding: const EdgeInsets.all(40),
//     secretConfig: SecretConfig(
//       borderColor: Colors.amber,
//       borderSize: 2.0,
//       disabledColor: Colors.black,
//       enabledColor: Colors.amber,
//       height: 15,
//       width: 15,
//       build: (context, {config, enabled}) {
//         return SizedBox(
//           child: Container(
//             decoration: BoxDecoration(
//               shape: BoxShape.rectangle,
//               color: enabled
//                   ? config.enabledColor
//                   : config.disabledColor,
//               border: Border.all(
//                 width: config.borderSize,
//                 color: config.borderColor,
//               ),
//             ),
//             padding: EdgeInsets.all(10),
//             width: config.width,
//             height: config.height,
//           ),
//           width: config.width,
//           height: config.height,
//         );
//       },
//     ),
//   ),
//   inputButtonConfig: InputButtonConfig(
//     textStyle:
//         InputButtonConfig.getDefaultTextStyle(context).copyWith(
//       color: Colors.orange,
//       fontWeight: FontWeight.bold,
//     ),
//     buttonStyle: OutlinedButton.styleFrom(
//       shape: RoundedRectangleBorder(),
//       backgroundColor: Colors.deepOrange,
//     ),
//   ),
//   cancelButton: const Icon(Icons.close),
//   deleteButton: const Icon(Icons.delete),
// )),




//         ],
//       ),
//     );
//   }
// }