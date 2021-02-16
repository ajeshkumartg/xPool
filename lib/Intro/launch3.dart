import 'package:flutter/material.dart';
import 'package:xPool/login/Login.dart';

class launch3 extends StatelessWidget {
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
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20, 110, 0, 0),
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/images/wallet.png'),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 10.0,
                // ),
                Container(
                  // padding: EdgeInsets.fromLTRB(45, 370, 0, 0),
                  child: Text(
                    'Spend less on Gas',
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
                  // padding: EdgeInsets.fromLTRB(102, 420, 0, 0),
                  child: Text(
                    'and repairs..',
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
                SizedBox(
                  height: 150,
                  width: 260,
                  child: Container(
                    //padding: EdgeInsets.only(top: 500),
                    child: Text(
                      '''
By getting a pool ride through Xpool, you can save fueling and service costs.             Don't drain your pockets.. ''',
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
      floatingActionButton: FloatingActionButton.extended(
        hoverElevation: 8.0,
        hoverColor: Colors.yellow,
        label: Text('''Get Started'''),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Login(),
              ));
        },
      ),
    );
  }
}
