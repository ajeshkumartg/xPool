import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(15, 120, 0, 0),
            color: Colors.yellowAccent,
            child: Text(
              'Join Xpool',
              style: TextStyle(),
            ),
          )
        ],
      ),
    );
  }
}
