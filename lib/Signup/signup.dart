import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xPool/HomePage/Landing.dart';
import 'package:xPool/Signin/Signin.dart';
import 'package:xPool/Signup/signUpTitle.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
              height: 35,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 330,
                    decoration: BoxDecoration(
                        // border:
                        ),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person, size: 20),
                          labelText: 'Full Name',
                          hintText: 'John Doe',
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail,
                            size: 20,
                          ),
                          labelText: 'Email ID',
                          hintText: 'johndoe@email.com',
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
                          prefixIcon: Icon(FontAwesomeIcons.lock, size: 20),
                          labelText: 'Password',
                          hintText: 'Pick a strong password',
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
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: GoogleFonts.montserrat(
                            color: Colors.green[300],
                            // fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        child: Text(
                          'Sign in',
                          style: GoogleFonts.montserrat(
                              color: Colors.green[300],
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signin()));
                        },
                      ),
                    ],
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
