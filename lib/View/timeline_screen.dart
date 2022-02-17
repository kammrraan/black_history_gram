import 'package:auto_size_text/auto_size_text.dart';
import 'package:black_history_gram/View/video_with_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants.dart';
class TimeLineScreen extends StatefulWidget {
  const TimeLineScreen({Key key}) : super(key: key);

  @override
  _TimeLineScreenState createState() => _TimeLineScreenState();
}

class _TimeLineScreenState extends State<TimeLineScreen> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 8),
                  //color: Colors.lightGreen,
                  width: devSize.width,
                  height: devSize.height*0.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/dummy.jpg',
                                fit: BoxFit.cover,
                                width: 35,
                                height: 35,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            //color: Colors.yellowAccent,
                            height: devSize.height*0.08,
                            width: devSize.width*0.22,
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.bottomLeft,
                                    height: devSize.height*0.05,
                                    width: devSize.width*0.22,
                                    //            color: Colors.yellow,
                                    child: Text('Patric Holmes', style: TextStyle(color: Colors.black,fontSize: 11, fontWeight: FontWeight.bold),)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: devSize.height*0.23,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) =>
                        Container(
                          child: Column(
                            children: [
                              Container(
                                width: devSize.width,
                                height: devSize.height*0.16,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      //color: Colors.black12,
                                      child: ClipRRect(
                                        //borderRadius: BorderRadius.circular(0),
                                        child: Image.network(
                                          // 'https://c5v2c4c8.stackpathcdn.com/wp-content/uploads/what-size-is-a4.jpg',
                                          'https://images.unsplash.com/photo-1612823600888-1ed3b64fcebb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjB8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60',
                                          fit: BoxFit.scaleDown,
                                          height: devSize.height*0.23,
                                          width: devSize.width*0.3,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: Container(
                                        //color: Colors.black12,
                                        child: ClipRRect(
                                          //borderRadius: BorderRadius.circular(0),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1612823600888-1ed3b64fcebb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjB8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60',
                                            fit: BoxFit.scaleDown,
                                            height: devSize.height*0.23,
                                            width: devSize.width*0.28,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    //color: Colors.yellow,
                                    border: Border(
                                      top: BorderSide(width: 0, color: kSectionTileColor.withOpacity(0.3)),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            top: BorderSide(width: 1, color: kSectionTileColor.withOpacity(0.3)),
                                            right: BorderSide(width: 1, color: kSectionTileColor.withOpacity(0.3)),
                                            bottom: BorderSide(width: 1, color: kSectionTileColor.withOpacity(0.3)),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        height: devSize.height*0.05,
                                        width: devSize.width*0.2,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child:IconButton(
                                                icon: Icon( Icons.thumb_up, color: Color(0xFF79261F),size: 15,),

                                              ),
                                            ),
                                            Container(
                                              child: Container(
                                                padding: const EdgeInsets.only(left: 0),
                                                alignment: Alignment.center,
                                                child: Text('20',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color:  Color(0xFF79261F)),),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            top: BorderSide(width: 1, color: kSectionTileColor.withOpacity(0.3)),
                                            right: BorderSide(width: 1, color: kSectionTileColor.withOpacity(0.3)),
                                            bottom: BorderSide(width: 1, color: kSectionTileColor.withOpacity(0.3)),
                                          ),
                                        ),

                                        alignment: Alignment.center,
                                        height: devSize.height*0.05,
                                        width: devSize.width*0.2,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child:IconButton(
                                                icon: Icon( Icons.thumb_down, color: kDarkGreyColor,size: 15,),

                                              ),
                                            ),
                                            Container(
                                              child: Container(
                                                padding: const EdgeInsets.only(left: 0),
                                                alignment: Alignment.center,
                                                child: Text('10',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color: kDarkGreyColor),),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            top: BorderSide(width: 1, color: kSectionTileColor.withOpacity(0.3)),
                                            bottom: BorderSide(width: 1, color: kSectionTileColor.withOpacity(0.3)),
                                            right: BorderSide(width: 1, color: kSectionTileColor.withOpacity(0.3)),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        height: devSize.height*0.05,
                                        width: devSize.width*0.2,

                                        child:
                                        Container(
                                          child:IconButton(
                                            icon: Icon( Icons.favorite, color: Colors.red,size: 16,),

                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            top: BorderSide(width: 1, color: kSectionTileColor.withOpacity(0.3)),
                                            bottom: BorderSide(width: 1, color: kSectionTileColor.withOpacity(0.3)),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        height: devSize.height*0.05,
                                        width: devSize.width*0.2,
                                        // decoration: BoxDecoration(
                                        //   color: Colors.yellow,
                                        // ),
                                        child:
                                        Container(
                                          child:IconButton(
                                            icon: Icon( Icons.download_sharp, color: kDarkGreyColor,size: 16,),

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
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => VideoWithDetail(),
                        transitionsBuilder: (c, anim, a2, child) =>
                            FadeTransition(opacity: anim, child: child),
                        transitionDuration: Duration(milliseconds: 0),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:0.0,left: 8),
                    child: Container(
                      width: devSize.width,
                      height: devSize.height*0.045,
                      decoration: BoxDecoration(
                      //  color: Colors.tealAccent,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText('Planning the seed of hope',
                          style: TextStyle(fontSize: 14, color:kSelectItemColor,fontWeight: FontWeight.w500,),),
                        width: devSize.width*0.9,
                        height: devSize.height*0.05,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 8,bottom: 8),
                  child: Container(
                    width: devSize.width,
                    height: devSize.height*0.045,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText('Revenge',
                        style: TextStyle(fontSize: 14, color: Colors.black,fontWeight: FontWeight.bold,),),
                      width: devSize.width*0.9,
                      height: devSize.height*0.05,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    width: devSize.width,
                    height: devSize.height*0.12,
                    color: kGreyColor.withOpacity(0.55),
                    child: Column(
                      children: [
                        Container(
                            // color: Colors.redAccent,
                          width: devSize.width,
                          height: devSize.height*0.09,
                          child:

                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 10,right: 8),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: AutoSizeText('Best Seller and New Releases Best Seller and New Releases Best Best Seller and New Releases Best Seller and New ReleasesBest Seller and New Releases',
                                    style: TextStyle(fontSize: 12, color: kDarkGreyColor,fontWeight: FontWeight.w400,),textAlign: TextAlign.start,),
                                  width: devSize.width*0.9,
                                  height: devSize.height*0.09,
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('Reviews',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0,right: 8),
                      child: Container(
                        //height: devSize.height*0.03,
                        width: devSize.width*0.08,
                        child: Container(
                          child: Image.asset('assets/viewall_icon.png', fit: BoxFit.scaleDown,),
                          width: devSize.width*0.2,
                          height: devSize.height*0.023,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('Michel Jhon',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        //color: Colors.redAccent,
                        alignment: Alignment.centerRight,
                        //height: devSize.height*0.03,
                        width: devSize.width*0.3,
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
                  ],
                ),
                Container(
                  width: devSize.width,
                  height: devSize.height*0.11,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        //   color: Colors.redAccent,
                        width: devSize.width,
                        height: devSize.height*0.065,
                        child:
                        Padding(
                          padding: const EdgeInsets.only(left: 8,top: 0,right: 8),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: AutoSizeText('Seller and New Releases New ReleasesBest Seller and New Releases',
                              style: TextStyle(fontSize: 12, color: kDarkGreyColor,fontWeight: FontWeight.w400,),textAlign: TextAlign.start,),
                            width: devSize.width*0.9,
                            height: devSize.height*0.065,
                          ),

                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: kGreyColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center,
                        width: devSize.width*0.9,
                        height: devSize.height*0.038,
                        child:

                        Padding(
                          padding: const EdgeInsets.only(left: 8,top: 0,right: 8),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text('Reply to this review',
                              style: TextStyle(fontSize: 11, color: kDarkGreyColor,fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                              ),textAlign: TextAlign.start,

                            ),
                            width: devSize.width*0.9,
                            height: devSize.height*0.038,
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(0.07),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  alignment: Alignment.centerRight,
                  width: devSize.width,
                  height: devSize.height*0.038,
                  child:

                  Padding(
                    padding: const EdgeInsets.only(left: 8,top: 0,right: 8),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text('View All Comments For This Review',
                        style: TextStyle(fontSize: 11, color: kDarkGreyColor,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      width: devSize.width,
                      height: devSize.height*0.038,
                    ),

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('Supra Pacific',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        alignment: Alignment.centerRight,
                        //height: devSize.height*0.03,
                        width: devSize.width*0.3,
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
                  ],
                ),
                Container(
                  width: devSize.width,
                  height: devSize.height*0.11,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        //   color: Colors.redAccent,
                        width: devSize.width,
                        height: devSize.height*0.065,
                        child:
                        Padding(
                          padding: const EdgeInsets.only(left: 8,top: 0,right: 8),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: AutoSizeText('New Releases Best Seller and New ReleasesBest Seller and New Releases New ReleasesBest Seller and New Releases',
                              style: TextStyle(fontSize: 12, color: kDarkGreyColor,fontWeight: FontWeight.w400,),textAlign: TextAlign.start,),
                            width: devSize.width*0.9,
                            height: devSize.height*0.065,
                          ),

                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: kGreyColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center,
                        width: devSize.width*0.9,
                        height: devSize.height*0.038,
                        child:

                        Padding(
                          padding: const EdgeInsets.only(left: 8,top: 0,right: 8),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text('Reply to this review',
                              style: TextStyle(fontSize: 11, color: kDarkGreyColor,fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                              ),textAlign: TextAlign.start,

                            ),
                            width: devSize.width*0.9,
                            height: devSize.height*0.038,
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(0.07),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  alignment: Alignment.centerRight,
                  width: devSize.width,
                  height: devSize.height*0.038,
                  child:

                  Padding(
                    padding: const EdgeInsets.only(left: 8,top: 0,right: 8),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text('View All Comments For This Review',
                        style: TextStyle(fontSize: 11, color: kDarkGreyColor,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      width: devSize.width,
                      height: devSize.height*0.038,
                    ),

                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    width: devSize.width*0.9,
                    height: devSize.height*0.22,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          //   color: Colors.redAccent,
                          width: devSize.width*0.9,
                          height: devSize.height*0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 10),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Your Rating and Review',
                                    style: TextStyle(fontSize: 11, color: kDarkGreyColor,fontWeight: FontWeight.w400,),),
                                  width: devSize.width*0.5,
                                  height: devSize.height*0.045,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:10.0),
                                child: GestureDetector(
                                  onTap: () {

                                  },

                                  child: Container(
                                    padding: EdgeInsets.only(left: 0, right: 8, top: 0),
                                    alignment: Alignment.center,
                                    width: devSize.width*0.25,
                                    height: devSize.height*0.045,
                                    child: Container(

                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                        color: Color(0xFF79261F),
                                      ),
                                      width: devSize.width*0.25,
                                      height: devSize.height*0.05,
                                      child: Text('Post Comment',
                                        style: TextStyle(fontSize: 10, color: Colors.white,fontWeight: FontWeight.w400,),),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 4),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            //height: devSize.height*0.03,
                            width: devSize.width*0.9,
                            child: RatingBar.builder(
                              itemSize: 17,
                              initialRating: 3,
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
                        Padding(
                          padding: const EdgeInsets.only(top:0.0,left: 8),
                          child: Container(
                            width: devSize.width*0.9,
                            height: devSize.height*0.045,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text('Write a Review',
                                style: TextStyle(fontSize: 10, color:kDarkGreyColor,fontWeight: FontWeight.w400,),),
                              width: devSize.width*0.9,
                              height: devSize.height*0.05,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
                          child: Container(
                            width: devSize.width,
                            child: SizedBox(
                              width: devSize.width,
                              child: TextFormField(
                                // focusNode: _focusNode,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'write your review',
                                  hintStyle: TextStyle(
                                    color: kFormInputColor,
                                    fontSize: 13,
                                  ),
                                  isDense: true,
                                  contentPadding: EdgeInsets.fromLTRB(8, 16, 15, 0),
                                  // contentPadding: EdgeInsets.only(left: 8,right: 8),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF8D0303),
                                      width: 0.5,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: kSectionTileColor,
                                      width: 0.5,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
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
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),


              ],
            ),
          ),
    );
  }
}
