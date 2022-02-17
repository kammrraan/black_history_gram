import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String subtitle;
  final Color color;
  final String imageUrl;

  CategoryItem(this.id,this.title,this.subtitle,this.color, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return  Container(
      child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(imageUrl,
                      fit: BoxFit.cover,
                      // height: devSize.height*0.2,
                      // width: devSize.width*0.4,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 48),
                      child: Container(
                        alignment: Alignment.center,
                        height: devSize.height*0.04,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          //color: Colors.lightGreen,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0,),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              title,
                              style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
      ),
    );
  }
}
