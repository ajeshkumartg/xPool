import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xPool/HomePage/Home.dart';
import 'package:xPool/Signup/signUptext.dart';
import 'package:xPool/login/Login.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SignupTitle(),
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
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        labelText: 'Full Name',
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text(
                        'Sign up',
                        style: GoogleFonts.montserrat(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    )),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
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
                  height: 120.0,
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
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Text(
                            '''Already have an account? Sign in''',
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
