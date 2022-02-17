import 'package:black_history_gram/Modal/dashboard_slider.dart';
import 'package:black_history_gram/Widgets/wishlist_item.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key key}) : super(key: key);

  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child:  Column(
            children: [
              Container(
                width: devSize.width*0.95,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 5),
                      child: Container(
                        width: devSize.width*0.525,
                        child: Text('Lists of Books Added', style: TextStyle(fontWeight:FontWeight.w500, fontSize: 14),textAlign: TextAlign.start,),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: devSize.height*0.7,
                child: ListView.builder(itemBuilder: (ctx, index)

                {
                  return WishListItem(index);
                }, itemCount:  2,
                  scrollDirection: Axis.vertical,
                  //physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
      ),
    );
  }
}
