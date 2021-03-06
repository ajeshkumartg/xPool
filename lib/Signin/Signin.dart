import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xPool/Signin/SigninTitle.dart';
import 'package:xPool/Signup/signup.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SigninTitle(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [Colors.greenAccent, Colors.black26],
                    ),
                  ),
                  height: 70,
                  width: 110,
                  child: Center(
                    child: Icon(FontAwesomeIcons.google),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [Colors.black26, Colors.greenAccent],
                    ),
                  ),
                  height: 70,
                  width: 110,
                  child: Center(
                    child: Icon(FontAwesomeIcons.facebook),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Center(
              child: Column(
                children: [
                  // Container(
                  //   width: 330,
                  //   decoration: BoxDecoration(
                  //       // border:
                  //       ),
                  //   child: TextFormField(
                  //     keyboardType: TextInputType.name,
                  //     decoration: InputDecoration(
                  //         labelText: 'Full Name',
                  //         hintText: 'John Doe',
                  //         border: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(15))),
                  //   ),
                  // ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 330,
                    decoration: BoxDecoration(
                        // border:
                        ),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail,
                            size: 20,
                          ),
                          labelText: 'Email ID',
                          hintText: 'youremail@domain.com',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 330,
                    decoration: BoxDecoration(
                        // border:
                        ),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 20,
                          ),
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
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text(
                        'Log in',
                        style: GoogleFonts.montserrat(
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // SizedBox(
                  //   height: 50,
                  // ),
                  Container(
                    height: 200,
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New to xPool?',
                          style: GoogleFonts.montserrat(
                              color: Colors.green[300],
                              // fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        InkWell(
                          child: Text(
                            'Create an account',
                            style: GoogleFonts.montserrat(
                                color: Colors.green[300],
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
