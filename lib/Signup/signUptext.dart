import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupTitle extends StatelessWidget {
  const SignupTitle({
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
            'Create Account,',
            style: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 35.0),
          ),
          Text(
            'Sign up to get started!',
            style: GoogleFonts.montserrat(
                color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
