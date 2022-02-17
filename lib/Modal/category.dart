import 'package:flutter/material.dart';

class Category {
final String id;
final String title;
final String subtitle;
final Color color;
final String imageUrl;

const Category({
  @required this.id,
  @required this.title,
  @required this.subtitle,
  this.color = Colors.orange,
  @required this.imageUrl,

});
}