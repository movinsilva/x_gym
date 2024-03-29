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
      interior: Expanded(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height*0.7,
              margin: const EdgeInsets.all(10),
              child: MeasurementBoxes(),
            ),
            AutoSizeText(
              "*Tap a box to add a new measurement",
              style: GoogleFonts.poppins(
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
