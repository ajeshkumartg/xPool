import 'package:flutter/material.dart';

import 'package:xPool/Intro/launch2.dart';

class launch1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 110, 0, 0),
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/images/man.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      // margin: EdgeInsets.fromLTRB(75, 370, 0, 0),
                      child: Text(
                        'Still Waiting for',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'YuseiMagic',
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    // SizedBox(height: 5.0),
                    Container(
                      // padding: EdgeInsets.fromLTRB(135, 420, 0, 0),
                      child: Text(
                        'a Cab?',
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
                      height: 15.0,
                    ),
                    SizedBox(
                      height: 140,
                      width: 250,
                      child: Container(
                        alignment: Alignment.center,
                        //padding: EdgeInsets.only(top: 500),
                        child: Text(
                          '''
Try the new way of commute with us.
Xpool allows you to find a ride from your nearest location.''',
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'YuseiMagic',
                            fontSize: 18.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        hoverElevation: 8.0,
        hoverColor: Colors.yellow,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Launch2(),
              ));
        },
        child: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
