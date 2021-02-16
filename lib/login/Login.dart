import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:xPool/main.dart';
import 'package:xPool/Signup/signup.dart';
import 'package:xPool/facebook.dart';

import 'package:xPool/login/loginText.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Welcome(),
            SizedBox(
              height: 90,
            ),
            Column(
              children: [
                Container(
                  width: 330,
                  decoration: BoxDecoration(
                      // border:
                      ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email ID',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 330,
                  decoration: BoxDecoration(
                      // border:
                      ),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 330,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.greenAccent, Colors.green[100]]),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.greenAccent),
                  child: Text(
                    'Sign in',
                    style: GoogleFonts.montserrat(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Facebook()));
                        },
                        child: CircleAvatar(
                          radius: 21.3,
                          child: Image(
                            image:
                                AssetImage('assets/images/icons/facebook.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image(
                            image: AssetImage('assets/images/icons/google.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200.0,
                ),
                Container(
                  // height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Text(
                            '''I'm a new user, Sign up''',
                            style: GoogleFonts.montserrat(
                                color: Colors.green[300],
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
