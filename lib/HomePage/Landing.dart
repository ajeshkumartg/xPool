import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xPool/HomePage/Home.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  List<Widget> _CurrentPage = [
    Intro(),
    Text('Find..'),
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
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.car),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.search),
            label: 'Find rides',
          ),
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
