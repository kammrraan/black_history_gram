import 'package:black_history_gram/View/timeline_tabs_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class TimelineMainScreen extends StatefulWidget {
  const TimelineMainScreen({Key key}) : super(key: key);

  @override
  _TimelineMainScreenState createState() => _TimelineMainScreenState();
}

class _TimelineMainScreenState extends State<TimelineMainScreen> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kGreyColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.white,),
        backgroundColor: Color(0xFF79261F),
        title:  Container(
          height: devSize.height*0.05,
          // width: devSize.width*0.99,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('assets/rendzio.png', fit: BoxFit.scaleDown,),
                //width: devSize.width*0.1,
                height: devSize.height*0.05,
              ),
              Container(
                child: Container(
                  padding: const EdgeInsets.only(left: 2),
                  alignment: Alignment.center,
                  child: Text('TIMELINE',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),

        actions: [



          Padding(
            padding: const EdgeInsets.only(right:0.0,top: 0,bottom: 0),
            child: GestureDetector(
              onTap: () {
              },

              child: Container(
                child: Container(
                  child: Image.asset('assets/add_icon.png', fit: BoxFit.scaleDown,),
                  width: devSize.width*0.05,
                  height: devSize.height*0.04,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right:8.0,top: 8,bottom: 8,left: 8),
            child: GestureDetector(
              onTap: () {
              },

              child: Container(
                child: Container(
                  child: Image.asset('assets/email_icon.png', fit: BoxFit.scaleDown,),
                  width: devSize.width*0.05,
                  height: devSize.height*0.04,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right:8.0,top: 8,bottom: 8),
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   PageRouteBuilder(
                //     pageBuilder: (c, a1, a2) => MyCartScreen(),
                //     transitionsBuilder: (c, anim, a2, child) =>
                //         FadeTransition(opacity: anim, child: child),
                //     transitionDuration: Duration(milliseconds: 0),
                //   ),
                // );

              },

              child: Container(
                child: Container(
                  child: Image.asset('assets/notification_icon.png', fit: BoxFit.scaleDown,),
                  width: devSize.width*0.05,
                  height: devSize.height*0.04,
                ),
              ),
            ),
          ),
        ],
      ),
      body: TimeLineTabScreen(),
    );
  }
}
