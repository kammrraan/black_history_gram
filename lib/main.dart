import 'package:black_history_gram/View/app_bottom_navigation_bar.dart';
import 'package:black_history_gram/View/black_histogram_dashboard.dart';
import 'package:black_history_gram/View/book_detail_screen.dart';
import 'package:black_history_gram/View/checkout_screen.dart';
import 'package:black_history_gram/View/login_screen.dart';
import 'package:black_history_gram/View/profile_screen.dart';
import 'package:black_history_gram/View/search_screen_with_search_bar.dart';
import 'package:black_history_gram/View/subscription_screen.dart';
import 'package:black_history_gram/View/timeline_main_screen.dart';
import 'package:black_history_gram/View/timeline_screen.dart';
import 'package:black_history_gram/View/young_adult.dart';
import 'package:flutter/material.dart';
import 'View/checkout.dart';
import 'View/checkout_information.dart';
import 'View/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: TimeLineScreen(),
      home: SplashScreen(),
    );
  }
}
