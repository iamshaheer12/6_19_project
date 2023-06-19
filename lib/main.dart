
import 'package:ecampus/bottomnavigation/chat.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


import 'Row4/Account.dart';
import 'Row4/Calander/calander.dart';
import 'Row4/Club/Email.dart';
import 'Row4/Home.dart';
import 'Row4/LinkedAccount.dart';
import 'Row4/List/Listing.dart';
import 'Row4/LoginMenue.dart';
import 'Row4/Member/addingmember.dart';
import 'Row4/Pageacess.dart';
import 'Row4/Product/Product.dart';
import 'Row4/Product/addProduct.dart';
import 'Row4/Society/Email.dart';
import 'Row4/Ticket.dart';
import 'Row4/initialScreen.dart';
import 'Row4/payment/payment.dart';
import 'Row4/post/aboutPost.dart';
import 'Row4/post/createPost.dart';
import 'Row4/post/postProfile.dart';
import 'Row4/screemlock/screenlock.dart';
import 'Row4/selectStructure.dart';
import 'Row4/studentUnion/Email.dart';
import 'Row4/updatePageinfo.dart';
import 'bottomnavigation/ClubSocieties.dart';
import 'bottomnavigation/ClubSocietiesProfile.dart';
import 'bottomnavigation/Diccount/Category.dart';
import 'bottomnavigation/Diccount/Discount.dart';
import 'bottomnavigation/EventView.dart';
import 'bottomnavigation/marketplace.dart';
import 'bottomnavigation/sell.dart';
import 'welcometoecampus.dart';




bool isadmin = false;
TextEditingController test = new TextEditingController();
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
  
      
      
    
}class MyApp extends StatelessWidget {
 


  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ECAMPUS',
      home:welcometoecampus(),


      debugShowCheckedModeBanner: false,
    );
  }
}

