import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome,',
            style: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 35.0),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Text(
            'Sign in to continue!',
            style: GoogleFonts.montserrat(
                color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
