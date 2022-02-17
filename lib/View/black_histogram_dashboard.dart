import 'dart:ui';

import 'package:black_history_gram/Modal/dashboard_slider.dart';
import 'package:black_history_gram/Modal/dummy_data.dart';
import 'package:black_history_gram/Widgets/blog_posts_item.dart';
import 'package:black_history_gram/Widgets/category_item.dart';
import 'package:black_history_gram/Widgets/trending_featured_gig_item.dart';
import 'package:black_history_gram/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_detail_screen.dart';

class BlackHistogramDashBoard extends StatefulWidget {
  const BlackHistogramDashBoard({Key key}) : super(key: key);

  @override
  _BlackHistogramDashBoardState createState() => _BlackHistogramDashBoardState();
}

class _BlackHistogramDashBoardState extends State<BlackHistogramDashBoard> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.white,),
        backgroundColor: Color(0xFF79261F),
        title:  Container(
          height: devSize.height*0.05,
          width: devSize.width*0.99,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('assets/rendzio.png', fit: BoxFit.scaleDown,),
                //width: devSize.width*0.1,
                height: devSize.height*0.04,
              ),
              Container(
                //height: devSize.height*0.03,
                //width: devSize.width*0.5,
                child: Container(
                  padding: const EdgeInsets.only(left: 2),
                  alignment: Alignment.center,
                  child: Text('BLACKHISTORYGRAM',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right:8.0,top: 8,bottom: 8),
            child: Container(
              //height: devSize.height*0.03,
              width: devSize.width*0.065,
              child: Container(
                child: Image.asset('assets/notification_icon.png', fit: BoxFit.scaleDown,),
                width: devSize.width*0.065,
                height: devSize.height*0.02,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text('Trending Today',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      //height: devSize.height*0.03,
                      width: devSize.width*0.04,
                      child: Container(
                        child: Image.asset('assets/viewall_icon.png', fit: BoxFit.scaleDown,),
                        width: devSize.width*0.04,
                        height: devSize.height*0.03,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: devSize.height*0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: dashboardSlideList.length,
                  itemBuilder: (BuildContext context, int index) =>
                      GestureDetector(
                          onTap: () {
                          },
                          child: FeaturedGigItem(index)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text('Most Saved',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      //height: devSize.height*0.03,
                      width: devSize.width*0.04,
                      child: Container(
                        child: Image.asset('assets/viewall_icon.png', fit: BoxFit.scaleDown,),
                        width: devSize.width*0.04,
                        height: devSize.height*0.03,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: devSize.height*0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: dashboardSlideList.length,
                  itemBuilder: (BuildContext context, int index) =>
                      FeaturedGigItem(index),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text('Categories',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      //height: devSize.height*0.03,
                      width: devSize.width*0.04,
                      child: Container(
                        child: Image.asset('assets/viewall_icon.png', fit: BoxFit.scaleDown,),
                        width: devSize.width*0.4,
                        height: devSize.height*0.03,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: kGreyColor,
                child: SizedBox(
                  height: 180,
                  child: GestureDetector(
                    onTap: () {
                     // Navigator.pushNamed(context, AllCoursesScreen.routeName);
                    },
                    child: GridView(
                      padding: const EdgeInsets.all(0),
                      physics: NeverScrollableScrollPhysics(),
                      children: DUMMY_CATEGORIES
                          .map(
                              (catData) => CategoryItem(
                            catData.id,
                            catData.title,
                            catData.subtitle,
                            catData.color,
                            catData.imageUrl,
                          )).toList(),

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text('Blog Posts',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      //height: devSize.height*0.03,
                      width: devSize.width*0.04,
                      child: Container(
                        child: Image.asset('assets/viewall_icon.png', fit: BoxFit.scaleDown,),
                        width: devSize.width*0.04,
                        height: devSize.height*0.03,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                //color: kGreyColor,
                child: SizedBox(
                  height: 110,
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.pushNamed(context, AllCoursesScreen.routeName);
                    },
                    child: GridView(
                      padding: const EdgeInsets.all(5),
                      physics: NeverScrollableScrollPhysics(),
                      children: DUMMY_Blog_Post
                          .map(
                              (catData) => BlogPostItem(
                            catData.id,
                            catData.title,
                            catData.subtitle,
                            catData.color,
                            catData.imageUrl,
                          )).toList(),

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
