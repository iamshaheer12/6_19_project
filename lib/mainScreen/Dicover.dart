import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import '../../../color.dart';
import 'disocover1.dart';

class Discover extends StatefulWidget {
  //const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 7,
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
                    text: "  Museum  ",
                  ),
                  Tab(
                   // icon: Icon(Icons.directions_transit),
                    text: "    Culture    ",
                  ),
                   Tab(
                   // icon: Icon(Icons.directions_transit),
                    text: "     Music     ",
                  ),
                   Tab(
                   // icon: Icon(Icons.directions_transit),
                    text: "    Festival    ",
                  ),
                   Tab(
                   // icon: Icon(Icons.directions_transit),
                    text: "    Festival    ",
                  ), Tab(
                   // icon: Icon(Icons.directions_transit),
                    text: "    Festival    ",
                  ), Tab(
                   // icon: Icon(Icons.directions_transit),
                    text: "    Festival    ",
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
                  discover(),
                   discover(),
                    discover(),
                     discover(),
                        discover(),   discover(),   discover(),
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