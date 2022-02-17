import 'package:flutter/material.dart';

class BlogPostItem extends StatefulWidget {
  final String id;
  final String title;
  final String subtitle;
  final Color color;
  final String imageUrl;

  BlogPostItem(this.id,this.title,this.subtitle,this.color, this.imageUrl);

  @override
  _BlogPostItemState createState() => _BlogPostItemState();
}

class _BlogPostItemState extends State<BlogPostItem> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return  Container(
      //color: Colors.cyan,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(widget.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 70,
            //bottom: 2,
            child: Container(
                  alignment: Alignment.center,
                  height: devSize.height*0.05,
                  width: devSize.width*0.5,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.45),
                  ),
                  child: Text(
                          widget.title,
                          style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                      ),
          ),
        ],
      ),
    );
  }
}
