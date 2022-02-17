import 'package:black_history_gram/constants.dart';
import 'package:flutter/material.dart';

class MyFriendsItem extends StatefulWidget {
  final String id;
  final String title;
  final String subtitle;
  final Color color;
  final String imageUrl;

  MyFriendsItem(this.id,this.title,this.subtitle,this.color, this.imageUrl);

  @override
  _MyFriendsItemState createState() => _MyFriendsItemState();
}

class _MyFriendsItemState extends State<MyFriendsItem> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        child: Column(
          children: [
            Container(
              child: ClipRRect(
                //borderRadius: BorderRadius.circular(0),
                child: Image.network(
                  'https://img.starbiz.com/resize/750x-/2020/03/06/tom-cruise-richest-hollywood-actor-09cc.jpg',
                  fit: BoxFit.scaleDown,
                   height: devSize.height*0.06,
                  width: devSize.width*0.16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                    alignment: Alignment.center,
                        child: Text(
                        'Alizero',
                          style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                      ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(bottom: 0),
             child: Align(
                  alignment: Alignment.center,
                  child:  Container(
                      alignment: Alignment.center,
                      child:Text('121 Friends',
                            style: TextStyle(color: kDarkGreyColor,fontSize: 9,fontWeight: FontWeight.w400),),
                        ),
                      ),
           ),
          ],
        ),
      ),
    );
  }
}
