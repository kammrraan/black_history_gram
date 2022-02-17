import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'app_bottom_navigation_bar.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key key}) : super(key: key);

  @override
  _SubscriptionScreenState createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        backgroundColor: Color(0xFF79261F),
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
                  child: Text('SUBSCRIPTION',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height:devSize.height*0.05 ,
              ),
               Align(
                 alignment: Alignment.center,
                 child: Container(
                   alignment: Alignment.center,
                    width: devSize.width*0.9,
                    height: devSize.height*0.15,
                    color: Colors.yellow.withOpacity(0.4),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0,top: 10),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text('Try BlackHistoryGram free for 30 days',
                              style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.w500,),),
                            width: devSize.width*0.9,
                            height: devSize.height*0.05,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0,top: 0),
                          child: Container(
                            alignment: Alignment.center,
                            width: devSize.width*0.9,
                            height: devSize.height*0.045,
                            child: Row(
                              children: [
                                Container(
                                  width: devSize.width*0.9,
                                  height: devSize.height*0.045,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: AutoSizeText('Firsts Choose the plan thats right for you',
                                      style: TextStyle(fontSize: 12, color:kSelectItemColor,fontWeight: FontWeight.w400,),),
                                    width: devSize.width*0.9,
                                    height: devSize.height*0.05,
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
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Container(
                  width: devSize.width*0.9,
                  height: devSize.height*0.045,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText('Choose the Right Plan for you',
                      style: TextStyle(fontSize: 12, color:kSelectItemColor,fontWeight: FontWeight.w400,),),
                    width: devSize.width*0.9,
                    height: devSize.height*0.05,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  width: devSize.width*0.9,
                  height: devSize.height*0.27,
                  color: Colors.yellow.withOpacity(0.55),
                  child: Column(
                    children: [
                      Container(
                     //   color: Colors.redAccent,
                        width: devSize.width*0.9,
                        height: devSize.height*0.045,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                alignment: Alignment.center,
                                child: Icon(Icons.check, color: kDarkGreyColor,size: 14,)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text('Best Seller and New Releases',
                                  style: TextStyle(fontSize: 12, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                                width: devSize.width*0.6,
                                height: devSize.height*0.045,
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                       // color: Colors.redAccent,
                        width: devSize.width*0.9,
                        height: devSize.height*0.045,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Icon(Icons.check, color: kDarkGreyColor,size: 14,)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text('1 Premium Selection title per month to keep',
                                  style: TextStyle(fontSize: 12, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                                width: devSize.width*0.8,
                                height: devSize.height*0.045,
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.redAccent,
                        width: devSize.width*0.9,
                        height: devSize.height*0.045,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Icon(Icons.check, color: kDarkGreyColor,size: 14,)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text('1 Premium Selection title per month to keep',
                                  style: TextStyle(fontSize: 12, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                                width: devSize.width*0.8,
                                height: devSize.height*0.045,
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.redAccent,
                        width: devSize.width*0.9,
                        height: devSize.height*0.045,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Icon(Icons.check, color: kDarkGreyColor,size: 14,)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text('1 Premium Selection title per month to keep',
                                  style: TextStyle(fontSize: 12, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                                width: devSize.width*0.8,
                                height: devSize.height*0.045,
                              ),
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0),
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
                            padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                            alignment: Alignment.center,
                            width: devSize.width*0.9,
                            height: devSize.height*0.05,
                            child: Container(

                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Color(0xFF79261F),
                              ),
                              width: devSize.width*0.4,
                              height: devSize.height*0.05,
                              child: Text('Start your free trial',
                                style: TextStyle(fontSize: 11, color: Colors.white,fontWeight: FontWeight.w400,),),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height:devSize.height*0.03 ,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  width: devSize.width*0.9,
                  height: devSize.height*0.23,
                  color: Colors.yellow.withOpacity(0.55),
                  child: Column(
                    children: [
                      Container(
                        //   color: Colors.redAccent,
                        width: devSize.width*0.9,
                        height: devSize.height*0.045,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Icon(Icons.check, color: kDarkGreyColor,size: 14,)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text('Best Seller and New Releases',
                                  style: TextStyle(fontSize: 12, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                                width: devSize.width*0.6,
                                height: devSize.height*0.045,
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.redAccent,
                        width: devSize.width*0.9,
                        height: devSize.height*0.045,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Icon(Icons.check, color: kDarkGreyColor,size: 14,)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text('1 Premium Selection title per month to keep',
                                  style: TextStyle(fontSize: 12, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                                width: devSize.width*0.8,
                                height: devSize.height*0.045,
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.redAccent,
                        width: devSize.width*0.9,
                        height: devSize.height*0.045,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Icon(Icons.check, color: kDarkGreyColor,size: 14,)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 10),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text('1 Premium Selection title per month to keep',
                                  style: TextStyle(fontSize: 12, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                                width: devSize.width*0.8,
                                height: devSize.height*0.045,
                              ),
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0),
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
                            padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                            alignment: Alignment.center,
                            width: devSize.width*0.9,
                            height: devSize.height*0.05,
                            child: Container(

                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Color(0xFF79261F),
                              ),
                              width: devSize.width*0.4,
                              height: devSize.height*0.05,
                              child: Text('Start your free trial',
                                style: TextStyle(fontSize: 11, color: Colors.white,fontWeight: FontWeight.w400,),),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Text('Signin with your amazon account',
                  style: TextStyle(fontSize: 12, color: kDarkGreyColor,fontWeight: FontWeight.w500,),),
                width: devSize.width*0.9,
                height: devSize.height*0.05,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
