/*
* Created by Movin on 17/09/2020
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/styles/Pallete.dart';
import 'package:x_gym/widgets/global/default_background.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return DefaultScaffold(
      title: "Dashboard",
      interior: Column(
        children: <Widget>[
          SizedBox(
            height: 90,
          ),
          AutoSizeText(
            ""
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: size.width*0.44,
                      margin: const EdgeInsets.only(top: 15,left: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Pallete.DefaultThemeColour,
                              blurRadius: 5,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                         border: Border.all(color: Pallete.DefaultThemeColour,
                         width: 3)
                      ),
                      height: size.height*0.32,
                      child: Column(
                        children: <Widget>[
                          AutoSizeText(
                            "Total W",
                            style: GoogleFonts.poppins(
                              fontSize:20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 15,left: 15,right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                            width: 3,
                            color: Pallete.DefaultThemeColour)
                      ),
                      height: size.height*0.2,
                      width: size.width*0.44,
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
                          AutoSizeText(
                            "Exercises :  2"
                          ),
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
                      margin: const EdgeInsets.only(top: 15,left: 15,right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                              width: 3,
                              color: Pallete.DefaultThemeColour)
                      ),
                      height: size.height*0.2,
                      width: size.width*0.44,
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
                          AutoSizeText(
                              "Exercises :   2"
                          ),
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
        ],
      )
    );
  }
}
