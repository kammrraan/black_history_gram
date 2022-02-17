import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_history_gram/Modal/dashboard_slider.dart';
import 'package:black_history_gram/Widgets/mycart_item.dart';
import 'package:black_history_gram/Widgets/trending_featured_gig_item.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'app_bottom_navigation_bar.dart';

class YoungAdultScreen extends StatefulWidget {
  const YoungAdultScreen({Key key}) : super(key: key);

  @override
  _YoungAdultScreenState createState() => _YoungAdultScreenState();
}

class _YoungAdultScreenState extends State<YoungAdultScreen> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (c, a1, a2) => AppBottomNavigationBar(),
                transitionsBuilder: (c, anim, a2, child) =>
                    FadeTransition(opacity: anim, child: child),
                transitionDuration: Duration(milliseconds: 0),
              ),
            );
          },
        ),
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
                  child: Text('YOUNG ADULT',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),

        actions: [
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
                  child: Image.asset('assets/settings_icon.png', fit: BoxFit.scaleDown,),
                  width: devSize.width*0.065,
                  height: devSize.height*0.02,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: devSize.width,
                height: devSize.height*0.15,
                color: kGreyColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,top: 10),
                      child: Container(
                        child: Text('Categories in Young Adult',
                          style: TextStyle(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w500,),),
                        width: devSize.width,
                        height: devSize.height*0.035,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,top: 8),
                      child: Container(
                        width: devSize.width,
                        height: devSize.height*0.05,
                        child: Row(
                          children: [
                            Container(
                              width: devSize.width*0.55,
                              height: devSize.height*0.05,
                              decoration: BoxDecoration(
                                color: kFormInputColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: AutoSizeText('YA Interest-Action & Adventure',
                                  style: TextStyle(fontSize: 12, color:kSelectItemColor,fontWeight: FontWeight.w400,),),
                                width: devSize.width*0.55,
                                height: devSize.height*0.05,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(

                                decoration: BoxDecoration(
                                  color: kFormInputColor,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                width: devSize.width*0.3,
                                height: devSize.height*0.05,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: AutoSizeText('YA Interest-Art',
                                    style: TextStyle(fontSize: 12, color: kSelectItemColor,fontWeight: FontWeight.w400,),),
                                  width: devSize.width*0.3,
                                  height: devSize.height*0.05,
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
          Container(
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
                                height: devSize.height*0.025,
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
                                height: devSize.height*0.025,
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
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
