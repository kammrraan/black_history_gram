import 'package:black_history_gram/Modal/dashboard_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants.dart';

class ShelvesItem extends StatefulWidget {
  final int index;
  ShelvesItem(this.index);

  @override
  _ShelvesItemState createState() => _ShelvesItemState();
}

class _ShelvesItemState extends State<ShelvesItem> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, PreviewCourseScreen.routeName, arguments:
        // Courses(
        //     id: 'm1',
        //     description: dashboardSlideList[widget.index].title,
        //     subtitle: dashboardSlideList[widget.index].instructor,
        //     price: 25.00
        // ),
        // );
      },
      child: Padding(
        padding: const EdgeInsets.all(4),
        child:  Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft:Radius.circular(7), bottomRight: Radius.circular(7) ),
            border: Border.all(color: Colors.grey),
            color: Colors.white,
          ),

          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(7), bottomRight: Radius.circular(7) ),
                ),
                height: deviceSize.height*0.2,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: ClipRRect(
                          child: Image.network(dashboardSlideList[widget.index].imageUrl,
                            fit: BoxFit.cover,
                            width: deviceSize.width*0.35,
                            height: deviceSize.height*0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(top: 3),
                  alignment: Alignment.centerLeft,
                  height: deviceSize.height*0.03,
                  width: deviceSize.width*0.35,
                 // color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Text(dashboardSlideList[widget.index].title,style: TextStyle(fontSize: 12,fontWeight:FontWeight.w500, color: kTextColor,),textAlign: TextAlign.start,),
                  ),
                ),
              ),
              Container(
                // height: 20,
                height: deviceSize.height*0.025,
                width: deviceSize.width*0.35,
                // color: Colors.yellow,
                child: Container(
                  height: deviceSize.height*0.025,
                  width: deviceSize.width*0.35,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Text(dashboardSlideList[widget.index].instructor,style: TextStyle(fontSize: 10, color: kTextColor, fontWeight: FontWeight.w300),textAlign: TextAlign.start,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Container(
                  //  color: Colors.tealAccent,
                  height: deviceSize.height*0.028,
                  width: deviceSize.width*0.35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            // color: Colors.lightBlueAccent,
                            height: deviceSize.height*0.03,
                            width: deviceSize.width*0.25,
                            alignment: Alignment.centerLeft,
                            child: RatingBar.builder(
                              itemSize: 12,
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                        ),
                      ),

                      Container(
                        // color: Colors.yellowAccent,
                        width: deviceSize.width*0.05,
                        height: deviceSize.height*0.03,
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image.asset('assets/unpressed_bookmark_icon.png',
                            fit: BoxFit.scaleDown,
                            width: deviceSize.width*0.04,
                            height: deviceSize.height*0.025,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}