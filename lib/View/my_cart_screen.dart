import 'package:black_history_gram/Modal/dashboard_slider.dart';
import 'package:black_history_gram/View/checkout_screen.dart';
import 'package:black_history_gram/Widgets/mycart_item.dart';
import 'package:black_history_gram/Widgets/wishlist_item.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'app_bottom_navigation_bar.dart';
import 'checkout.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({Key key}) : super(key: key);

  @override
  _MyCartScreenState createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
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
                height: devSize.height*0.04,
              ),
              Container(
                child: Container(
                  padding: const EdgeInsets.only(left: 2),
                  alignment: Alignment.center,
                  child: Text('My Cart',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
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
            // mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: devSize.height*0.7,
                      child: ListView.builder(itemBuilder: (ctx, index)
                      {
                        return MyCartItem(index);
                      }, itemCount:  3,
                        scrollDirection: Axis.vertical,
                        //physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                padding: EdgeInsets.only(left: 0),
                color: kGreyColor,
                width: devSize.width,
                height: devSize.height*0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 6,bottom: 0,right: 8),
                         //color: Colors.lime,
                        height: devSize.height*0.05,
                        width: devSize.width*0.3,
                        child:  Text('Order Total:',
                          style: TextStyle(fontSize: 11, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        // color: Colors.yellowAccent,
                        width: devSize.width*0.3,
                        alignment: Alignment.centerRight,
                        height: devSize.height*0.05,
                        child: Text('\$20.31',
                          style: TextStyle(fontSize: 14, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => CheckOutScreen(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: Duration(milliseconds: 0),
                    ),
                  );

                },

                child: Container(
                  padding: EdgeInsets.only(left: 0),
                  color: Color(0xFF79261F),
                  width: devSize.width,
                  height: devSize.height*0.065,
                  child:
                      Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Container(
                          // color: Colors.yellowAccent,
                          width: devSize.width*0.3,
                          alignment: Alignment.center,
                          height: devSize.height*0.065,
                          child: Text('Checkout',
                            style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.w400,),),
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
