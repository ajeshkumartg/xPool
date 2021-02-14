import 'package:flutter/material.dart';
import 'package:xPool/google.dart';
import 'package:xPool/facebook.dart';
import 'package:xPool/main.dart';
import 'package:xPool/Signup/signup.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10, 80, 0, 0),
                  child: Text(
                    '''Let's sign you in.''',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 37.0,
                      fontFamily: 'YuseiMagic',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 160, 0, 0),
                  child: Text(
                    '''Welcome back.''',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 201, 0, 0),
                  child: Text(
                    '''You've been missed.''',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Center(
            child: Column(
              children: <Widget>[
                Container(
                  width: 290,
                  child: TextFormField(
                    readOnly: false,
                    decoration: InputDecoration(
                        fillColor: Colors.greenAccent,
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.black87),
                        labelText: 'Phone,email or username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  width: 290,
                  child: TextFormField(
                    obscureText: true,
                    readOnly: false,
                    decoration: InputDecoration(
                        fillColor: Colors.greenAccent,
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.black87),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(right: 40.0),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Container(
                    child: Text(
                      '''-OR-''',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14.0,
                ),
                Center(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 127.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        //padding: EdgeInsets.only(),
                        width: 40.0,
                        height: 40.0,
                        child: ConstrainedBox(
                          constraints: BoxConstraints.expand(),
                          child: Ink.image(
                            image:
                                AssetImage('assets/images/icons/facebook.png'),
                            fit: BoxFit.fill,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Facebook()));
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 24.0,
                      ),
                      Container(
                        width: 36.0,
                        height: 36.0,
                        child: ConstrainedBox(
                          constraints: BoxConstraints.expand(),
                          child: Ink.image(
                            image: AssetImage('assets/images/icons/google.png'),
                            fit: BoxFit.fill,
                            //fit: BoxFit.fill,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Google()));
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  width: 220.0,
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),

                    color: Colors.greenAccent,
                    // elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  child: InkWell(
                    child: Text('''Don't have an account?'''),
                  ),
                ),
                SizedBox(
                  height: 17.0,
                ),
                Container(
                  width: 220.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.transparent,
                    // elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
