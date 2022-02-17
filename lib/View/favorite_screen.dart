import 'package:black_history_gram/Modal/dashboard_slider.dart';
import 'package:black_history_gram/Widgets/available_gigs_item.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                //height: devSize.height*0.525,
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
                height: devSize.height*0.55,
                child: ListView.builder(itemBuilder: (ctx, index)

                {
                  return AvailableGigItem(index, 'Favorite');
                }, itemCount:  2,
                  scrollDirection: Axis.vertical,
                  //physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
