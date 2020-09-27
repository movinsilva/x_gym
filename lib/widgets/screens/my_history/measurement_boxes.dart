/*
* created by Movin on 26/09/2020
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MeasurementBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    List<String> bodyMeasurementParts = ["Weight", "Height", "Waist", "Biceps", "Chest", "Legs"];
    List<String> bodyMeasurementUnits = ["kg", "Inch", "Inch", "Inch", "Inch", "Inch"];

    return
      GridView.count(
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
            width: size.width * 0.44,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 12,
                  ),
                  AutoSizeText(
                    bodyMeasurementParts[index],
                    style: GoogleFonts.poppins(
                      color: Colors.black45,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  AutoSizeText(
                    "68.75 " + bodyMeasurementUnits[index],
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AutoSizeText(
                        "Last Time",
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: Colors.black38,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.greenAccent[400],
                          ),
                          AutoSizeText(
                            "0.5 inch",
                            style: GoogleFonts.poppins(
                                color: Colors.greenAccent[400],
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  AutoSizeText(
                    "57.5 " + bodyMeasurementUnits[index],
                    style: GoogleFonts.poppins(
                        color: Colors.black45,
                        fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
            ),
          );
        }),);
  }
}
