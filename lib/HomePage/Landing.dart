import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xPool/HomePage/Home.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:xPool/Search/title.dart';
import 'package:xPool/Search/Search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  List<Widget> _CurrentPage = [
    Intro(),
    Search(),
    Text('Add'),
    Text('Profile..'),
    Text('History..'),
  ];
  void _onTapIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: GoogleFonts.montserrat(
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: GoogleFonts.montserrat(),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.car), label: 'xPool'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.plus), label: 'Add Ride'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.clock), label: 'History'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: Container(
        child: Center(
          child: _CurrentPage.elementAt(_currentIndex),
        ),
      ),
    );
  }
}
