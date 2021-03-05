import 'package:flutter/material.dart';
import 'package:xPool/Intro/launch1.dart';

//import 'package:xPool/Home1.dart';
//import 'package:flutter_launcher_icons/android.dart';
void main() => runApp(XPool());

class XPool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    // ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XPool Car pooling',
      theme: ThemeData(
          primaryColorLight: Colors.greenAccent,
          accentColor: Colors.greenAccent,
          primaryColor: Colors.greenAccent),
      home: launch1(),
    );
  }
}
