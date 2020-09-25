/*
* created by Movin on 25/09/2020
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/styles/Pallete.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class BodyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return DefaultScaffold(
      title: "Body Chart",
      interior: Container(
        margin: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Container(
            margin: const EdgeInsets.only( left: 15,right: 12,bottom: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(35)),

              boxShadow: [
                BoxShadow(
                  color: Colors.orange[100],
                  blurRadius: 7,
                )
              ],
            ),
            height: size.height * 0.14,
            width: size.width * 0.44,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                AutoSizeText(
                  "Legs",
                  style: GoogleFonts.poppins(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                AutoSizeText("Exercises :  2"),
                AutoSizeText(
                  "68.75 kg",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          );
        }),),
      ),
    );
  }
}
