import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Find a ride',
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 35.0),
            ),
          ),
        ],
      ),
    );
  }
}
