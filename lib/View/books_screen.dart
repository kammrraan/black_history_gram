import 'package:black_history_gram/Modal/dashboard_slider.dart';
import 'package:black_history_gram/Widgets/available_gigs_item.dart';
import 'package:flutter/material.dart';

class BooksScreen extends StatefulWidget {
  const BooksScreen({Key key}) : super(key: key);

  @override
  _BooksScreenState createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  ScrollController scrollController = ScrollController(
    initialScrollOffset: 1, // or whatever offset you wish
    keepScrollOffset: true,
  );
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  return AvailableGigItem(index, 'Books');
                }, itemCount:  2,
                  scrollDirection: Axis.vertical,
                  controller: scrollController,
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
