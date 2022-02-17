import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SearchScreenWithBar extends StatefulWidget {
  const SearchScreenWithBar({Key key}) : super(key: key);

  @override
  _SearchScreenWithBarState createState() => _SearchScreenWithBarState();
}

class _SearchScreenWithBarState extends State<SearchScreenWithBar> {
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
                  child: Text('SEARCH',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
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
                  child: Image.asset('assets/notification_icon.png', fit: BoxFit.scaleDown,),
                  width: devSize.width*0.065,
                  height: devSize.height*0.02,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: devSize.width*0.75,
                  child: SizedBox(
                    width: devSize.width*0.75,
                    child: TextFormField(
                     // focusNode: _focusNode,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: kGreyColor,
                        hintText: 'Search Keywords....',
                        hintStyle: TextStyle(color: kFormInputColor, fontSize: 13, ),
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(8, 16, 15, 0),
                        // contentPadding: EdgeInsets.only(left: 8,right: 8),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(6), bottomLeft:Radius.circular(6), ),
                          borderSide: BorderSide(
                            color: Color(0xFF8D0303),
                            width: 0.5,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(6), bottomLeft:Radius.circular(6), ),
                          borderSide: BorderSide(
                            color: kSectionTileColor,
                            width: 0.5,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(6), bottomLeft:Radius.circular(6), ),
                          borderSide: BorderSide(
                            color:  kSectionTileColor,
                            width: 0.5,
                          ),
                        ),

                        //filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(6), bottomLeft:Radius.circular(6), ),
                          borderSide: BorderSide(
                            color: kSectionTileColor,
                            width: 0.5,
                          ),
                        ),
                      ),
                      obscureText: false,
                      //validator: passwordValidator,
                      //controller: _passwordController,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                Container(
                  child: Image.asset('assets/search_btn.png', fit: BoxFit.scaleDown,),
                  //width: devSize.width*0.1,
                  height: devSize.height*0.05,
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: devSize.width,
              height: devSize.height*0.23,
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
                    padding: const EdgeInsets.only(left: 8,top: 10),
                    child: Container(
                      width: devSize.width,
                      height: devSize.height*0.05,
                      child: Row(
                        children: [
                          Container(
                            width: devSize.width*0.425,
                            height: devSize.height*0.05,
                            decoration: BoxDecoration(
                              color: kFormInputColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: AutoSizeText('Science & Mathematics',
                                style: TextStyle(fontSize: 12, color:kSelectItemColor,fontWeight: FontWeight.w400,),),
                              width: devSize.width*0.425,
                              height: devSize.height*0.05,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Container(

                              decoration: BoxDecoration(
                                color: kFormInputColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              width: devSize.width*0.3,
                              height: devSize.height*0.05,
                              child: Container(
                                alignment: Alignment.center,
                                child: AutoSizeText('Literary Fiction',
                                  style: TextStyle(fontSize: 12, color: kSelectItemColor,fontWeight: FontWeight.w400,),),
                                width: devSize.width*0.3,
                                height: devSize.height*0.05,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Container(

                              decoration: BoxDecoration(
                                color: kFormInputColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              width: devSize.width*0.2,
                              height: devSize.height*0.05,
                              child: Container(
                                alignment: Alignment.center,
                                child: AutoSizeText('Romance',
                                  style: TextStyle(fontSize: 12, color: kSelectItemColor,fontWeight: FontWeight.w400,),),
                                width: devSize.width*0.2,
                                height: devSize.height*0.05,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,top: 10),
                    child: Container(
                      width: devSize.width,
                      height: devSize.height*0.05,
                      child: Row(
                        children: [
                          Container(
                            width: devSize.width*0.5,
                            height: devSize.height*0.05,
                            decoration: BoxDecoration(
                              color: kFormInputColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: AutoSizeText('Technology & Engineering',
                                style: TextStyle(fontSize: 12, color:kSelectItemColor,fontWeight: FontWeight.w400,),),
                              width: devSize.width*0.5,
                              height: devSize.height*0.05,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Container(

                              decoration: BoxDecoration(
                                color: kFormInputColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              width: devSize.width*0.4,
                              height: devSize.height*0.05,
                              child: Container(
                                alignment: Alignment.center,
                                child: AutoSizeText('Religion & Spirtuality',
                                  style: TextStyle(fontSize: 12, color: kSelectItemColor,fontWeight: FontWeight.w400,),),
                                width: devSize.width*0.4,
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
            Padding(
              padding: const EdgeInsets.only(left: 8,top: 8),
              child: Container(
                child: Text('View All Interest',
                  style: TextStyle(fontSize: 13, color: Colors.black,fontWeight: FontWeight.w500,),),
                width: devSize.width,
                height: devSize.height*0.035,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,top: 8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0, color: kGreyColor),
                  ),
                ),
                child: Text('Young Adult',
                  style: TextStyle(fontSize: 13, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                width: devSize.width,
                height: devSize.height*0.035,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,top: 8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0, color: kGreyColor),
                  ),
                ),
                child: Text('Career & Growth',
                  style: TextStyle(fontSize: 13, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                width: devSize.width,
                height: devSize.height*0.035,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8,top: 8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0, color: kGreyColor),
                  ),
                ),
                child: Text('Humanity',
                  style: TextStyle(fontSize: 13, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                width: devSize.width,
                height: devSize.height*0.035,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,top: 8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0, color: kGreyColor),
                  ),
                ),
                child: Text('Social Science',
                  style: TextStyle(fontSize: 13, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                width: devSize.width,
                height: devSize.height*0.035,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,top: 8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0, color: kGreyColor),
                  ),
                ),
                child: Text('Travel',
                  style: TextStyle(fontSize: 13, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                width: devSize.width,
                height: devSize.height*0.035,
              ),
            ),


          ],
        ),
      ),
    );
  }
}
