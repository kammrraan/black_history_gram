import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants.dart';
import 'app_bottom_navigation_bar.dart';

class BookDetailScreen extends StatefulWidget {
  const BookDetailScreen({Key key}) : super(key: key);

  @override
  _BookDetailScreenState createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
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
          // height: devSize.height*0.05,
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
                  alignment: Alignment.centerLeft,
                  child: Text('Book Detail',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),
      ),
body: SingleChildScrollView(
  child:   Column(
    children: [
      SizedBox(
        height: devSize.height*0.010,
      ),

      InkWell(
      onTap: () {},
  child: Padding(
    padding: const EdgeInsets.only(left: 10,right: 10,bottom: 8,),
    child: Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Stack(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0,right: 0,),
              child: Container(
                width: devSize.width,
                height: devSize.height*0.25,
                decoration: BoxDecoration(
                  //color: Colors.amberAccent,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      height: devSize.height*0.038,
                      width: devSize.width*0.6,
                      child: Text('Planning the seed of hope',
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: kTextColor,),),
                    ),
                    Container(
                      width: devSize.width*0.6,
                      alignment: Alignment.topLeft,
                      height: devSize.height*0.025,
                      child: Text('By Reagan Bakkar',
                        style: TextStyle(fontSize: 11, color: kTextLightColor,fontWeight: FontWeight.w400,),),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: devSize.width*0.6,
                      height: devSize.height*0.025,
                      child: Text('Type: Self-Improvement',
                        style: TextStyle(fontSize: 11, color: kTextLightColor,fontWeight: FontWeight.w400,),),
                    ),
                   Container(
                        // color: Colors.blueGrey,
                        height: devSize.height*0.03,
                        width: devSize.width*0.6,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: devSize.height*0.03,
                              width: devSize.width*0.25,
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
                    SizedBox(height: 2,),
                    Padding(
                      padding: const EdgeInsets.only(top:0.0),
                      child: Container(
                        width: devSize.width*0.6,

                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                             //   color: Colors.yellow,
                                border: Border(
                                  right: BorderSide(width: 0, color: kSectionTileColor.withOpacity(0.9)),
                                ),
                              ),
                              width: devSize.width*0.15,
                              height: devSize.height*0.07,
                              child: Column(
                                children: [
                                  Container(
                                    width: devSize.width*0.15,
                                    height: devSize.height*0.025,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 0),
                                      alignment: Alignment.center,
                                      child: Text('Total Likes',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400, color:  kDarkGreyColor),),
                                    ),
                                  ),
                                  Container(
                                    width: devSize.width*0.15,
                                    height: devSize.height*0.04,
                                    child: Container(
                                      padding: const EdgeInsets.only(top: 2),
                                      alignment: Alignment.center,
                                      child: Text('204',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color:  Color(0xFF79261F)),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                //color: Colors.yellow,
                                border: Border(
                                  right: BorderSide(width: 0, color: kSectionTileColor.withOpacity(0.9)),
                                ),
                              ),
                              width: devSize.width*0.17,
                              height: devSize.height*0.07,
                              child: Column(
                                children: [
                                  Container(
                                    width: devSize.width*0.17,
                                    height: devSize.height*0.025,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 0),
                                      alignment: Alignment.center,
                                      child: Text('Total Pages',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400, color:  kDarkGreyColor),),
                                    ),
                                  ),
                                  Container(
                                    width: devSize.width*0.17,
                                    height: devSize.height*0.045,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 0, top: 2),
                                      alignment: Alignment.center,
                                      child: Text('267',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color:  Color(0xFF79261F)),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: devSize.width*0.28,
                              height: devSize.height*0.07,
                              child: Column(
                                children: [
                                  Container(
                                    width: devSize.width*0.28,
                                    height: devSize.height*0.025,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 0),
                                      alignment: Alignment.center,
                                      child: Text('Completed by Users',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400, color:  kDarkGreyColor),),
                                    ),
                                  ),
                                  Container(
                                    width: devSize.width*0.28,
                                    height: devSize.height*0.045,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 0),
                                      alignment: Alignment.center,
                                      child: Text('234',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color:  Color(0xFF79261F)),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0,top: 3),
                      child: Container(
                        width: devSize.width*0.6,
                        height: devSize.height*0.05,
                        child: Row(
                          children: [
                            Container(
                              width: devSize.width*0.16,
                              height: devSize.height*0.035,
                              decoration: BoxDecoration(
                                color: kGreyColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: Text('Download',
                                  style: TextStyle(fontSize: 9, color:kSelectItemColor,fontWeight: FontWeight.w400,),),
                                width: devSize.width*0.18,
                                height: devSize.height*0.035,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Container(

                                decoration: BoxDecoration(
                                  color: kGreyColor,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                width: devSize.width*0.2,
                                height: devSize.height*0.035,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text('Add to Wishlist',
                                    style: TextStyle(fontSize: 9, color: kSelectItemColor,fontWeight: FontWeight.w400,),),
                                  width: devSize.width*0.18,
                                  height: devSize.height*0.035,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Container(

                                decoration: BoxDecoration(
                                  color: Color(0xFF79261F),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                width: devSize.width*0.22,
                                height: devSize.height*0.035,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text('Share to Timeline',
                                    style: TextStyle(fontSize: 9, color: Colors.white,fontWeight: FontWeight.w400,),),
                                  width: devSize.width*0.18,
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
                      width: devSize.width*0.33,
                      height: devSize.height*0.25,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                padding: EdgeInsets.only(left: 3),
                // color: Colors.lightGreen,
                alignment: Alignment.topLeft,
                width: devSize.width*0.33,
                height: devSize.height*0.05,
                child:
                Stack(
                  children: [

                    Container(
                      // color: Colors.yellowAccent,
                      width: devSize.width*0.05,
                      height: devSize.height*0.025,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset('assets/booknumber_icon.png',
                          fit: BoxFit.scaleDown,
                          width: devSize.width*0.05,
                          height: devSize.height*0.025,
                        ),
                      ),
                    ),
                    Container(
                      width: devSize.width*0.05,
                      height: devSize.height*0.02,
                      padding: EdgeInsets.only(top: 0),
                      child: Text('1',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500, color: Colors.white),textAlign: TextAlign.center,),
                    ),
                  ],
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:0.0,left: 8),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Summary of Book",style: TextStyle(fontWeight: FontWeight.w500),)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                width: devSize.width,
                  color: kGreyColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "I am trying to figure out where can I change what is shown in the notification bar in the audio_service package. More specifically, can you tell me where can I remove the slider (the seek bar) from the notification bar? ( it is not shown until you expand the bar ). Or to improve it, by adding the current position and the max duration above it. But I think I can do that if I can find out where can I play around with the code for that In my last article, Playing short audio clips in Flutter with Just Audio, I demonstrated ... However, I've found the slider hard to use, so I created a ProgressBar widget and published it ... These methods simply forward the calls to the audio player."
                    ),
                  ),
              ),
            ),
          ],
        ),

      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text('Reviews',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
              child: Text('Supra Pacific',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
        // color: Colors.redAccent,
        width: devSize.width,
        height: devSize.height*0.06,
        child:

        Padding(
          padding: const EdgeInsets.only(left: 8,top: 0,right: 8),
          child: Container(
            alignment: Alignment.topLeft,
            child: AutoSizeText('Best Seller and New Releases Best Seller and New ReleasesBest Seller and New Releases',
              style: TextStyle(fontSize: 12, color: kDarkGreyColor,fontWeight: FontWeight.w400,),textAlign: TextAlign.start,),
            width: devSize.width*0.9,
            height: devSize.height*0.15,
          ),
        ),
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
            padding: const EdgeInsets.all(8.0),
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
            height: devSize.height*0.15,
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
