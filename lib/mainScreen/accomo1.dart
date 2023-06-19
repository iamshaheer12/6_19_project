import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import '../../../color.dart';
import 'accommodation.dart';
import 'disocover1.dart';

class Accomo1 extends StatefulWidget {
  //const Discover({super.key});

  @override
  State<Accomo1> createState() => _DiscoverState();
}

class _DiscoverState extends State<Accomo1> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                
                radius: 60,
                borderWidth: 0.2,
                borderColor: Colors.grey,
                backgroundColor: splashcolor,
                unselectedBackgroundColor: Colors.white,
                unselectedLabelStyle: TextStyle(color: splashgragy),
                labelStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                  //  icon: Icon(Icons.directions_car),
                    text: "              Private               ",
               ),
                  Tab(
                   // icon: Icon(Icons.directions_transit),
                    text: "       College Accomodation       ",
                  ),
                   Tab(
                   // icon: Icon(Icons.directions_transit),
                    text: "              Rental               ",
                  ),
               //  Container(),

                 
                  // Tab(
                  // //  icon: Icon(Icons.directions_car),
                  //   text: "car",
                  // ),

                //  Tab(icon: Icon(Icons.directions_bike)),
                //   Tab(icon: Icon(Icons.directions_car)),
                //   Tab(icon: Icon(Icons.directions_transit)),
                //   Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                  Accomo2(),
                  Accomo2(),
                  Accomo2(),
                  //Accomo2(),

                  
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}