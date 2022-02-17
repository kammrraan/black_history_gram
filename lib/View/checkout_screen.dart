import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'checkout.dart';
import 'my_cart_screen.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key key}) : super(key: key);

  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
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
                pageBuilder: (c, a1, a2) => MyCartScreen(),
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
                height: devSize.height*0.04,
              ),
              Container(
                child: Container(
                  padding: const EdgeInsets.only(left: 5),
                  alignment: Alignment.center,
                  child: Text('CHECKOUT',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
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
                  child: Image.asset('assets/cart_icon.png', fit: BoxFit.scaleDown,),
                  width: devSize.width*0.065,
                  height: devSize.height*0.02,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: devSize.height*0.015,
            ),
            InkWell(
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
                                  //color: Colors.lime,
                                  height: devSize.height*0.035,
                                  width: devSize.width*0.475,
                                  child: AutoSizeText('The Mindful Revolution',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: kTextColor,),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                   //  color: Colors.yellowAccent,
                                    width: devSize.width*0.15,
                                    height: devSize.height*0.03,
                                    child:Text('\$30.00',
                                      style: TextStyle(fontSize: 12, color: Color(0xFF79261F),fontWeight: FontWeight.w600,),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            //  color: Colors.lightGreen,
                            width: devSize.width*0.625,
                            alignment: Alignment.topLeft,
                            height: devSize.height*0.031,
                            child: Text('By Kate Pickert',
                              style: TextStyle(fontSize: 11, color: kTextLightColor,fontWeight: FontWeight.w400,),),
                          ),
                          Container(
                            //    color: Colors.lightGreen,
                            alignment: Alignment.topLeft,
                            width: devSize.width*0.625,
                            height: devSize.height*0.031,
                            child: Text('Type: Health & Exercise',
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
                              alignment: Alignment.topLeft,
                              width: devSize.width*0.625,
                              height: devSize.height*0.035,
                              child: Container(
                                // width: devSize.width*0.23,
                                // height: devSize.height*0.035,
                                child: Text('QTY:I',
                                  style: TextStyle(fontSize: 11,     color: Color(0xFF79261F),fontWeight: FontWeight.w400,),),
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
                        padding: const EdgeInsets.only(top: 0,left: 0,),
                        child:  ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image.network('https://images.unsplash.com/photo-1432888498266-38ffec3eaf0a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=753&q=80',
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
      ),
            InkWell(
              onTap: () {
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,bottom: 8,),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.5))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                      //  color: Colors.lime,
                        height: devSize.height*0.035,
                        width: devSize.width,
                        child: Padding(
                          padding: const EdgeInsets.only(left:16.0,),
                          child: AutoSizeText('Cost Summary',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300, color: kDarkGreyColor,),),
                        ),
                      ),
                      Container(
                            width: devSize.width,
                            height: devSize.height*0.15,
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
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(width: 0, color: kDarkGreyColor),
                                    ),
                                  ),
                                  width: devSize.width,
                                  height: devSize.height*0.07,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                    //    color: Colors.lime,
                                        height: devSize.height*0.035,
                                        width: devSize.width*0.2,
                                        child: AutoSizeText('Subtotal',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: kDarkGreyColor,),),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                      //  color: Colors.blue,
                                        height: devSize.height*0.035,
                                        width: devSize.width*0.25,
                                        child: AutoSizeText('\$30.00',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: kDarkGreyColor,),),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        //color: Colors.lime,
                                        height: devSize.height*0.035,
                                        width: devSize.width*0.2,
                                        child: AutoSizeText('Discount',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: Colors.yellow,),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          //  color: Colors.yellowAccent,
                                          width: devSize.width*0.25,
                                          height: devSize.height*0.03,
                                          child:Text('\$3.00',
                                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.yellow,),),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: devSize.width,
                                  height: devSize.height*0.055,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        //color: Colors.lime,
                                        height: devSize.height*0.035,
                                        width: devSize.width*0.2,
                                        child: AutoSizeText('Total',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Color(0xFF79261F),),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          //  color: Colors.yellowAccent,
                                          width: devSize.width*0.25,
                                          height: devSize.height*0.03,
                                          child:Text('\$27.00',
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF79261F),),),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 32.0),
              child: GestureDetector(
                onTap: () async {

                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => CheckOut(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: Duration(milliseconds: 0),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF8D0303),
                    ),
                    width: devSize.width * 0.85,
                    height: devSize.height * 0.06,
                    child: Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: AutoSizeText(
                            'Check Out',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
