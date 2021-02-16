import 'package:flutter/material.dart';

import 'package:xPool/Intro/launch3.dart';

class launch2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20, 110, 0, 0),
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/images/nature.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(45, 370, 0, 0),
                  child: Text(
                    'Less Emission...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'YuseiMagic',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.fromLTRB(110, 420, 0, 0),
                  child: Text(
                    'More Green...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'YuseiMagic',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.only(top: 500),
                  child: Text(
                    '''
Others can offer a ride through Xpool. Hence, the number of cars on road can be reduced. Lesser the cars,lesser the emissions. ''',
                    style: TextStyle(
                      color: Colors.black54,
                      fontFamily: 'YuseiMagic',
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        hoverElevation: 8.0,
        hoverColor: Colors.yellow,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => launch3(),
              ));
        },
        child: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
