import 'package:flutter/material.dart';
import '../../color.dart';

class tabbar extends StatelessWidget {
  // String tex = '';
  // tabbar({required this.tex});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
                appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              bottom: TabBar(
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: splashcolor,)
                    , tabs: [
                       Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Color(0xFF9EA6BE), width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("All"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Color(0xFF9EA6BE), width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Accomodation"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Color(0xFF9EA6BE), width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Discover Places"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Color(0xFF9EA6BE), width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("News"),
                          ),
                        ),
                      ),

                    ],
              )),
              body: TabBarView(children: [
               Container(),
               Container(),
               Container(),
               Container(),
              ]),
            )));
  }
}
