import 'package:black_history_gram/View/black_histogram_dashboard.dart';
import 'package:black_history_gram/View/profile_screen.dart';
import 'package:black_history_gram/View/search_screen.dart';
import 'package:black_history_gram/View/search_screen_with_search_bar.dart';
import 'package:black_history_gram/View/subscription_screen.dart';
import 'package:black_history_gram/View/timeline_main_screen.dart';
import 'package:black_history_gram/View/timeline_screen.dart';
import 'package:black_history_gram/View/young_adult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({Key key}) : super(key: key);

  @override
  _AppBottomNavigationBarState createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> _pages = [
   TimelineMainScreen(),
    SearchScreenWithBar(),
    BlackHistogramDashBoard(),
    SearchScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: _pages.elementAt(_selectedIndex),

      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 70,
          //  color: Colors.white,
          child: SizedBox(
            height: 70,
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              backgroundColor: Colors.white,
              selectedFontSize: 10,
              selectedIconTheme: IconThemeData(
                color: Color(0xFF8D0303),
                //size: 28,
              ),
              iconSize: 40,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: kDarkGreyColor,
              selectedLabelStyle: TextStyle(fontSize: 10),
              onTap: _onItemTapped,
              items: [
                BottomNavigationBarItem(
                  icon:  ImageIcon(
                    AssetImage("assets/unpressed_timeline_icon.png"),
                    size: 25,
                    //color: Color(0xFF3A5A98),
                  ),
                  label:'TIMELINE',
                ),

                BottomNavigationBarItem(
                  //icon: Image.asset('assets/unpressed_search_icon.png'),
                  icon: ImageIcon(
                    AssetImage("assets/unpressed_search_icon.png"),
                    size: 20,
                  ),
                  label: 'SEARCH',
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled,color:Color(0xFF8D0303) ,),
                  // ignore: deprecated_member_use
                  label: 'HOME',
                ),

                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/unpressed_library_icon.png"),
                    size: 20,
                  ),
                  // ignore: deprecated_member_use
                  label: 'LIBRARY',
                ),

                BottomNavigationBarItem(
                  icon:  ImageIcon(
                    AssetImage("assets/unpressed_profil_icon.png"),
                    size: 20,
                  ),
                  label:'PROFILE',
                ),
              ],
            ),
          ),
        ),
        //   ],
        // ),
      ),
    );
  }
}
