import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_history_gram/Modal/dashboard_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants.dart';

class MyCartItem extends StatefulWidget {
  final int index;
  MyCartItem(this.index,);

  @override
  _MyCartItemState createState() => _MyCartItemState();
}

class _MyCartItemState extends State<MyCartItem> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 8,),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 0,right: 0,),
                  child: Container(
                    width: devSize.width,
                    height: devSize.height*0.2,
                    decoration: BoxDecoration(
                      //color: Colors.amberAccent,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: devSize.height*0.010,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 0),
                          //color: Colors.lightGreen,
                          width: devSize.width*0.625,
                          height: devSize.height*0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 6,bottom: 0,right: 8),
                                // color: Colors.lime,
                                height: devSize.height*0.035,
                                width: devSize.width*0.625,
                                child: AutoSizeText(dashboardSlideList[widget.index].title,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: kTextColor,),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 6, right: 2, top: 0),
                          //  color: Colors.lightGreen,
                          width: devSize.width*0.625,
                          alignment: Alignment.topLeft,
                          height: devSize.height*0.031,
                          child: Text(dashboardSlideList[widget.index].instructor,
                            style: TextStyle(fontSize: 11, color: kTextLightColor,fontWeight: FontWeight.w400,),),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 6, right: 2, top: 0),
                          //    color: Colors.lightGreen,
                          alignment: Alignment.topLeft,
                          width: devSize.width*0.625,
                          height: devSize.height*0.031,
                          child: Text('Type: Self-Improvement',
                            style: TextStyle(fontSize: 11, color: kTextLightColor,fontWeight: FontWeight.w400,),),
                        ),
                        GestureDetector(
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
                            padding: EdgeInsets.only(left: 6, right: 2, top: 0),
                            alignment: Alignment.topLeft,
                            width: devSize.width*0.625,
                            height: devSize.height*0.035,
                            child: Container(

                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xFF79261F),
                              ),
                              width: devSize.width*0.16,
                              height: devSize.height*0.035,
                              child: Text('\$20.31',
                                style: TextStyle(fontSize: 11, color: Colors.white,fontWeight: FontWeight.w400,),),
                            ),
                          ),
                        ),
                        Container(
                           //color: Colors.blueGrey,
                          height: devSize.height*0.032,
                          width: devSize.width*0.625,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Container(
                                   //color: Colors.grey,
                                  height: devSize.height*0.032,
                                  width: devSize.width*0.6,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        //color: Colors.yellowAccent,
                                        width: devSize.width*0.07,
                                        height: devSize.height*0.03,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(0),
                                          child: Image.asset('assets/zoomin_icon.png',
                                            fit: BoxFit.scaleDown,
                                            width: devSize.width*0.07,
                                            height: devSize.height*0.03,
                                          ),
                                        ),
                                      ),
                                      Container(
                             //           color: Colors.yellowAccent,
                                        alignment: Alignment.center,
                                        width: devSize.width*0.06,
                                        height: devSize.height*0.03,
                                        child: AutoSizeText('1',
                                          style: TextStyle(fontSize: 13, color: Color(0xFF79261F),fontWeight: FontWeight.bold,),),
                                      ),
                                      Container(
                               //          color: Colors.yellowAccent,
                                        width: devSize.width*0.07,
                                        height: devSize.height*0.03,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(0),
                                          child: Image.asset('assets/zoomout_icon.png',
                                            fit: BoxFit.scaleDown,
                                            width: devSize.width*0.07,
                                            height: devSize.height*0.03,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0,left: 0,),
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.network(dashboardSlideList[widget.index].imageUrl,
                          fit: BoxFit.cover,
                          width: devSize.width*0.3,
                          height: devSize.height*0.2,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

