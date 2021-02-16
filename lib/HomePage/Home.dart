import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Title'),
      // ),

      body: Container(
        child: Image.network(
            'https://images.vexels.com/media/users/3/127817/isolated/preview/4fd0c9dcae60a9a63579b9b6853eeb09-glossy-retro-beetle-car-by-vexels.png'),
      ),
    );
  }
}
