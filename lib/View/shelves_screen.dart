import 'package:black_history_gram/Modal/dashboard_slider.dart';
import 'package:black_history_gram/Widgets/shelves_item.dart';
import 'package:black_history_gram/Widgets/trending_featured_gig_item.dart';
import 'package:flutter/material.dart';

class ShelvesScreen extends StatefulWidget {
  const ShelvesScreen({Key key}) : super(key: key);

  @override
  _ShelvesScreenState createState() => _ShelvesScreenState();
}

class _ShelvesScreenState extends State<ShelvesScreen> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('My Shelves',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text('Art',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    ),
                  ),
                ],
              ),
              Container(
                height: devSize.height*0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: dashboardSlideList.length,
                  itemBuilder: (BuildContext context, int index) =>
                      ShelvesItem(index),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text('Romentic',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    ),
                  ),
                ],
              ),
              Container(
                height: devSize.height*0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: dashboardSlideList.length,
                  itemBuilder: (BuildContext context, int index) =>
                      ShelvesItem(index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
