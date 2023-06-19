import 'package:ecampus/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:get/get.dart';

import '../../mainpage.dart';

class faceLock extends StatefulWidget {
  const faceLock({super.key});

  @override
  State<faceLock> createState() => _faceLockState();
}

class _faceLockState extends State<faceLock> {
   lock(BuildContext context){
    return screenLock(
       footer: Center(
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: TextButton(onPressed: (){}, child: Text('Forgot your passcode?',style: TextStyle(color: splashcolor,fontSize: 13,fontWeight: FontWeight.w700),)),
          
        ),
      ),
              onUnlocked: () {
                Get.to(mainpage1());
              },
              cancelButton: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              deleteButton: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              keyPadConfig: KeyPadConfig(
                buttonConfig: KeyPadButtonConfig(
                  backgroundColor: Colors.white,
                  fontSize: 30,
                  foregroundColor: Colors.black,
                  buttonStyle: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    side: BorderSide(color: Colors.white),
                    // shape:  RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(70),
                    //   side: BorderSide(color: Colors.white,width: 4)

                    // ),
                    backgroundColor: Colors.white,
                  ),
                ),
              
              ),
              secretsConfig: SecretsConfig(
                spacing: 15, // or spacingRatio
                padding: const EdgeInsets.all(40),
                secretConfig: SecretConfig(
                  borderColor: otbcolor,
                  borderSize: 2.0,
                  disabledColor: otbcolor,
                  enabledColor: splashcolor,
                  size: 17,
                  builder: (context, config, enabled) => Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          enabled ? config.enabledColor : config.disabledColor,
                      border: Border.all(
                        width: config.borderSize,
                        color: config.borderColor,
                      ),
                    ),
                    padding: const EdgeInsets.all(10),
                    width: config.size,
                    height: config.size,
                  ),
                ),
              ),
              title: Container(
                  margin: EdgeInsets.only(bottom: 60),
                  child: Text(
                    'Enter Passcode',
                    style: TextStyle(color: Colors.black),
                  )),
              context: context,
              correctString: '1234',
              config: ScreenLockConfig(
                backgroundColor: Colors.white,
                titleTextStyle: TextStyle(fontSize: 24),
              ),
              customizedButtonChild: GestureDetector(
                  onTap: () {}, child: SvgPicture.asset('images/faceid.svg')),
              customizedButtonTap: () async {},
              onOpened: () async {},
            );
  }
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.029,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: screensize.width * 0.042,
              ),
              child: Icon(
                Icons.arrow_back,
                color: splashcolor,
              ),
            ),
          ),
          FutureBuilder(builder: lock(context),
          
          )
        
          
        ],
      ),
    );
  }
}
