import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_history_gram/Modal/dashboard_slider.dart';
import 'package:black_history_gram/Modal/dummy_data.dart';
import 'package:black_history_gram/Widgets/type_item.dart';
import 'package:black_history_gram/Widgets/trending_featured_gig_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool favoriteStatus= false;
  bool friendStatus= false;
  bool accountStatus= false;
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 0,right: 0,bottom: 0,),
                  child: Container(
                   color:  Color(0xFF79261F),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                Container(
                                  //color: Colors.yellow,
                                  alignment: Alignment.center,
                                  height: devSize.height*0.1,
                                  width: devSize.width*0.8,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                    //    color: Colors.blue,
                                        child: Image.asset('assets/rendzio.png', fit: BoxFit.scaleDown,),
                                        width: devSize.width*0.1,
                                        height: devSize.height*0.05,
                                      ),
                                      Container(
                                        child: Container(
                                          padding: const EdgeInsets.only(left: 2),
                                          alignment: Alignment.center,
                                          child: Text('MY PROFILE',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.white),),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                               //   color: Colors.blueGrey,
                                  alignment: Alignment.centerRight,
                                  height: devSize.height*0.07,
                                  width: devSize.width*0.2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right:0.0,top: 0,bottom: 0),
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
                                              child: Image.asset('assets/add_icon.png', fit: BoxFit.scaleDown,),
                                              width: devSize.width*0.06,
                                              height: devSize.height*0.045,
                                            ),
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(right:8.0,top: 8,bottom: 8,left: 8),
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
                                              child: Image.asset('assets/email_icon.png', fit: BoxFit.scaleDown,),
                                              width: devSize.width*0.06,
                                              height: devSize.height*0.045,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Stack(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 0,right: 0,),
                            child: Container(
                              width: devSize.width,
                              height: devSize.height*0.22,
                              decoration: BoxDecoration(
                                //color: Colors.amberAccent,
                                color:  Color(0xFF79261F),
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
                                    width: devSize.width*0.55,
                                    height: devSize.height*0.05,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(left: 0,bottom: 0,right: 0),
                                    //  color: Colors.lime,
                                      height: devSize.height*0.035,
                                      width: devSize.width*0.55,
                                      child: AutoSizeText('Jennifer Viksen',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500, color: Colors.white,),),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                                    //  color: Colors.lightGreen,
                                    width: devSize.width*0.55,
                                    alignment: Alignment.centerLeft,
                                    height: devSize.height*0.035,
                                    child: Text('jenniferviksen@gmail.com',
                                      style: TextStyle(fontSize: 11, color: Colors.white,fontWeight: FontWeight.w300,),),
                                  ),
                              Container(
                                      width: devSize.width*0.55,
                                height: devSize.height*0.01,
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        width: devSize.width*0.3,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(width: 0, color: Color(0xFF9C0F04).withOpacity(0.4)),
                                          ),
                                        ),
                                      ),

                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: GestureDetector(
                                      onTap: () {

                                      },

                                      child: Container(
                                        padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                                        alignment: Alignment.topLeft,
                                        width: devSize.width*0.55,
                                        height: devSize.height*0.04,
                                        child: Container(

                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(2),
                                            color: Colors.white,
                                          ),
                                          width: devSize.width*0.25,
                                          height: devSize.height*0.04,
                                          child: Text('Recent Activity',
                                            style: TextStyle(fontSize: 11, color: Colors.black,fontWeight: FontWeight.w400,),),
                                        ),
                                      ),
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
                                padding: const EdgeInsets.only(top: 0,left: 25,),
                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(7),
                                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUIE7MZAcG_Dq3TVof1tHAYLUSSq1y-nGrDQ&usqp=CAU',
                                    fit: BoxFit.cover,
                                    width: devSize.width*0.3,
                                    height: devSize.height*0.18,
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
              ),
              Padding(
                padding: const EdgeInsets.only(top:0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF79261F),
                    border: Border(
                      top: BorderSide(width: 0, color: kSectionTileColor.withOpacity(0.3)),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Container(
                        //color: Colors.yellow,
                        alignment: Alignment.center,
                        height: devSize.height*0.07,
                        width: devSize.width*0.5,
                        decoration: BoxDecoration(
                          color: Color(0xFF79261F),
                          border: Border(
                            right: BorderSide(width: 0, color: kSectionTileColor.withOpacity(0.3)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text('Likes',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300, color: Colors.white),),
                            ),
                            Container(
                              child: Container(
                                padding: const EdgeInsets.only(left: 8),
                                alignment: Alignment.center,
                                child: Text('20',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.white),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color(0xFF79261F),
                        alignment: Alignment.center,
                        height: devSize.height*0.07,
                        width: devSize.width*0.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right:0.0,top: 0,bottom: 0),
                              child: GestureDetector(
                                onTap: () {

                                },

                                child: Container(
                                  child: Container(
                                    child: Text('Liked',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300, color: Colors.white),),
                                  ),
                                ),
                              ),
                            ),
                         Padding(
                           padding: const EdgeInsets.only(left: 8),
                           child: GestureDetector(
                                  onTap: () {

                                  },

                                  child: Container(
                                    child: Container(
                                      child: Text('51',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.white),),
                                    ),
                                  ),
                                ),
                         ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 0, color: kSectionTileColor),
                          ),
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Text(
                                  'Favorites',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300, color: kSelectItemColor),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                              child: Container(
                                child: IconButton(
                                  icon: Icon(favoriteStatus == true ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down_outlined, color: Colors.grey,),
                                  onPressed: () {
                                    setState(() {
                                      favoriteStatus = !favoriteStatus;
                                    });
                                  },

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      favoriteStatus == true ?
                      Container(
                        height: devSize.height*0.3,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: dashboardSlideList.length,
                          itemBuilder: (BuildContext context, int index) =>
                              FeaturedGigItem(index),
                        ),
                      ) : Container(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 0, color: kSectionTileColor),
                          ),
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Text(
                                  'My Friends',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300, color: kSelectItemColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                              child: Container(
                                child: IconButton(
                                  icon: Icon(friendStatus == true ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down_outlined, color: Colors.grey,),
                                  onPressed: () {
                                    setState(() {
                                      friendStatus = !friendStatus;
                                    });
                                  },

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      friendStatus == true ?
                      Container(
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
                                      (catData) => MyFriendsItem(
                                    catData.id,
                                    catData.title,
                                    catData.subtitle,
                                    catData.color,
                                    catData.imageUrl,
                                  )).toList(),

                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 0.0,
                                  mainAxisSpacing: 0.0
                              ),
                            ),
                          ),
                        ),
                      ) : Container(),

                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 0, color: kSectionTileColor),
                          ),
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Text(
                                  'Account Information',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300, color: kSelectItemColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                              child: Container(
                                child: IconButton(
                                  icon: Icon(accountStatus == true ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down_outlined, color: Colors.grey,),
                                  onPressed: () {
                                    setState(() {
                                      accountStatus = !accountStatus;
                                    });
                                  },

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      accountStatus == true ?
                      Container(
                        height: devSize.height*0.37618,
                        child: ListView.builder(
                          padding: EdgeInsets.only(top: 8),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: dashboardSlideList.length,
                          itemBuilder: (BuildContext context, int index) =>
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(width: 0, color: kSectionTileColor.withOpacity(0.6)),
                                  ),
                                ),
                                alignment: Alignment.centerLeft,
                                width: devSize.width,
                                height: devSize.height*0.06,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    'Account Player Settings',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300, color: kSelectItemColor),
                                  ),
                                ),
                              )
                        ),
                      ) : Container(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
