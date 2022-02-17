import 'package:flutter/cupertino.dart';

class DashboardSlide{
  final String imageUrl;
  final String title;
  final String instructor;
  final double rating;
  final String price;
  final String status;

  DashboardSlide({
    @required this.imageUrl,
    @required this.title,
    @required this.instructor,
    @required this.rating,
    @required this.price,
    @required this.status,
  });
}


final dashboardSlideList = [
DashboardSlide(
  imageUrl:'https://images.unsplash.com/photo-1612823600888-1ed3b64fcebb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjB8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60',
  title: 'Planning the seed of',
  instructor: 'By Reagan Bakkar',
  rating: 0.35,
  price: '\$100.00',
  status: 'closed',
),
//
DashboardSlide(
  imageUrl: 'https://images.unsplash.com/photo-1432888498266-38ffec3eaf0a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=753&q=80',
  title: 'Digital Fortress',
  instructor: 'By Reagan Bakkar',
  rating: 0.45,
  price: 'Free',
  status: 'closed',
),

DashboardSlide(
  imageUrl:'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80',
  title: 'Chilling Effects',
  instructor: 'By Reagan Bakkar',
  rating: 0.24,
  price: '\$25.00',
  status: 'Waiting for rate and review',

),
  DashboardSlide(
    imageUrl: 'https://images.unsplash.com/photo-1561328399-f94d2ce78679?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzB8fG1lZGljYWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    title: 'Teach your child',
    instructor: 'By Reagan Bakkar',
    rating: 0.75,
    price: '\$125.00',
    status: 'Waiting for rate and review',

  ),

];