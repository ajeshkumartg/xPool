import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xPool/Search/title.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int _passenger = 0;

  void _incpass() {
    setState(() {
      _passenger++;
    });
  }

  void _decpass() {
    setState(() {
      _passenger--;
    });
  }

  void _datePickerDialog() {
    DateTime now = DateTime.now();

    showDatePicker(
            context: context,
            initialDate: now,
            firstDate: DateTime(2000),
            lastDate: DateTime(2050))
        .then((onValue) {});
  }

  void _timerDialog() {
    DateTime now = DateTime.now();

    showTimePicker(
            context: context,
            initialTime: TimeOfDay(hour: now.hour, minute: now.minute))
        .then((onValue) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Wrap(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SearchTitle(),
                SizedBox(
                  height: 60,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      width: 330,
                      decoration: BoxDecoration(
                          // border:
                          ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'Leaving from ',
                            hintStyle: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      width: 330,
                      decoration: BoxDecoration(
                          // border:
                          ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'Going to ➡',
                            hintStyle: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 330,
                      height: 1,
                      color: Colors.black26,
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Row(
                              children: [
                                Icon(FontAwesomeIcons.calendarDay),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '''When you're going?''',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            onTap: () {
                              _datePickerDialog();

                              _timerDialog();
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 330,
                      height: 1,
                      color: Colors.black26,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Passangers',
                      style: GoogleFonts.montserrat(
                          color: Colors.black87, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      child: Icon(FontAwesomeIcons.plus),
                      onTap: () {
                        _incpass();
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$_passenger',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      child: Icon(FontAwesomeIcons.minus),
                      onTap: () {
                        _decpass();
                      },
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    GestureDetector(
                      child: Container(
                        width: 230,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.greenAccent,
                              Colors.green[100]
                            ]),
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.greenAccent),
                        child: Text(
                          'Search',
                          style: GoogleFonts.montserrat(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
