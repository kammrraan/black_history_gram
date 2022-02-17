import 'package:black_history_gram/View/timeline_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class TimeLineTabScreen extends StatefulWidget {
  const TimeLineTabScreen({Key key}) : super(key: key);

  @override
  _TimeLineTabScreenState createState() => _TimeLineTabScreenState();
}

class _TimeLineTabScreenState extends State<TimeLineTabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: new Scaffold(
        backgroundColor: kSectionTileColor,
        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: new Container(
            color: Colors.white70,
            child: new SafeArea(
              child: Column(
                children: <Widget>[
                  new Expanded(child: new Container()),
                  new TabBar(
                    unselectedLabelColor: kDarkGreyColor,
                    tabs: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: new Text("Public", style: TextStyle( fontSize: 13, ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: new Text("Private", style: TextStyle(fontSize: 13),),
                      ),
                    ],
                    labelColor: Color(0xFF79261F),
                    indicatorColor: Color(0xFF79261F),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            TimeLineScreen(),
            TimeLineScreen(),
          ],
        ),

      ),
    );

  }
}
