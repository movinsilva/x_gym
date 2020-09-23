import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class Attendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Calendar(),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black45,
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:12.0,vertical: 6),
                  child: AutoSizeText(
                    "Total",
                    style: GoogleFonts.poppins(
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0),
                  child: AutoSizeText(
                    "12 Days" ,
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
