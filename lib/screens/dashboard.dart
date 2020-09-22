/*
* Created by Movin on 17/09/2020
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/styles/Pallete.dart';
import 'package:x_gym/widgets/global/default_background.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class Dashboard extends StatelessWidget {
  int selectedCategory = 0;
  List<String> categories = [
    "Last Workout",
    "Week",
    "Month",
    "3 Months",
    "6 Months",
    "Year"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return DefaultScaffold(
      title: "Dashboard",
      interior: Column(
        children: <Widget>[
          TabLayout(categories),
          SizedBox(
            height: 20,
          ),
          AutoSizeText(
            "01/10/2020",
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: size.width * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: size.height * 0.32,
                            width: size.width * 0.43,
                            margin: const EdgeInsets.only(left: 15, top: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Pallete.DefaultThemeColour,
                                  blurRadius: 7,
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Column(
                              children: <Widget>[
                                AutoSizeText(
                                  "Total Workout",
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15, left: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Pallete.DefaultThemeColour,
                                  blurRadius: 7,
                                )
                              ],
                            ),
                            height: size.height * 0.17,
                            width: size.width * 0.44,
                            child: Column(
                              children: <Widget>[
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
                                SizedBox(
                                  height: 10,
                                ),
                                AutoSizeText(
                                  "20 : 30",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Pallete.DefaultThemeColour,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 15, left: 15, bottom: 15),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Pallete.DefaultThemeColour,
                                  blurRadius: 7,
                                )
                              ],
                            ),
                            height: size.height * 0.17,
                            width: size.width * 0.44,
                            child: Column(
                              children: <Widget>[
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
                                AutoSizeText("Exercises :   2"),
                                SizedBox(
                                  height: 10,
                                ),
                                AutoSizeText(
                                  "20 : 30",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Pallete.DefaultThemeColour,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(
                                top: 15, left: 15, right: 15),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Pallete.DefaultThemeColour,
                                  blurRadius: 7,
                                )
                              ],
                            ),
                            height: size.height * 0.2,
                            width: size.width * 0.44,
                            child: Column(
                              children: <Widget>[
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
                                SizedBox(
                                  height: 10,
                                ),
                                AutoSizeText(
                                  "20 : 30",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Pallete.DefaultThemeColour,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 15, left: 15, right: 15),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Pallete.DefaultThemeColour,
                                  blurRadius: 7,
                                )
                              ],
                            ),
                            height: size.height * 0.2,
                            width: size.width * 0.44,
                            child: Column(
                              children: <Widget>[
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
                                AutoSizeText("Exercises :   2"),
                                SizedBox(
                                  height: 10,
                                ),
                                AutoSizeText(
                                  "20 : 30",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Pallete.DefaultThemeColour,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 15, left: 15, right: 15),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Pallete.DefaultThemeColour,
                                  blurRadius: 7,
                                )
                              ],
                            ),
                            height: size.height * 0.12,
                            width: size.width * 0.44,
                            child: Column(
                              children: <Widget>[
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
                                SizedBox(
                                  height: 10,
                                ),
                                AutoSizeText(
                                  "20 : 30",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Pallete.DefaultThemeColour,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 15, left: 15, right: 15, bottom: 15),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Pallete.DefaultThemeColour,
                                  blurRadius: 7,
                                )
                              ],
                            ),
                            height: size.height * 0.12,
                            width: size.width * 0.44,
                            child: Column(
                              children: <Widget>[
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
                                AutoSizeText("Exercises :   2"),
                                SizedBox(
                                  height: 10,
                                ),
                                AutoSizeText(
                                  "20 : 30",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Pallete.DefaultThemeColour,
                                  ),
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
            ),
          ),
        ],
      ),
    );
  }
}
