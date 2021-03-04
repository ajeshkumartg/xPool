import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Title'),
      // ),

      body: Container(
        child: Center(
          child: Image.network(
              'https://www.volacci.com/sites/default/files/styles/blog_main_image/public/blog/image/404%20error.png?itok=K1adpBHD'),
        ),
      ),
    );
  }
}
