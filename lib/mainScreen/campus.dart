import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import '../../../color.dart';
import 'accommodation.dart';
import 'disocover1.dart';

class Campus extends StatefulWidget {
  //const Discover({super.key});

  @override
  State<Campus> createState() => _DiscoverState();
}

class _DiscoverState extends State<Campus> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 5,
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
                    text: "     All     ",
                  ),
                  Tab(
                   // icon: Icon(Icons.directions_transit),
                    text: " Accomodation ",
                  ),
                   Tab(
                   // icon: Icon(Icons.directions_transit),
                    text: " Discover Places ",
                  ),
                  Tab(
                   // icon: Icon(Icons.directions_transit),
                    text: "    News    ",
                  ),
                  Tab(
                   // icon: Icon(Icons.directions_transit),
                    text: "  Discover Places  ",
                  ),
                 
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
                 Container(),
                  Container(),

                   Container(),
                    Container(),
                     Container(),
                  
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