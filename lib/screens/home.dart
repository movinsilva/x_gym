/*
* Created by Movin on 29/09/2020
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:circle_wave_progress/circle_wave_progress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:x_gym/styles/Pallete.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<String> areas = ["Chest", "Arms", "Shoulders"];

    return DefaultScaffold(
      title: "Home",
      interior: Expanded(
        child: Column(
          children: <Widget>[
            CircularStepProgressIndicator(
              totalSteps: 35,
              currentStep: 20,
              stepSize: 17,
              selectedColor: Pallete.DefaultThemeColour,
              gradientColor: LinearGradient(
                colors: [Pallete.DefaultThemeColour,Colors.black38],
              ),
              unselectedColor: Colors.grey[200],
              padding: 0,
              width: 250,
              height: 250,
              selectedStepSize: 30,
              child: Center(
                child: AutoSizeText(
                  "20/35",
                  style: GoogleFonts.poppins(
                    fontSize: 40,
                    color: Pallete.DefaultThemeColour,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              roundedCap: (_, __) => true,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: size.height * 0.3,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    height: size.height * 0.25,
                    width: size.width * 0.37,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Pallete.DefaultThemeColour, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Pallete.DefaultThemeColour,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 5),
                            child: AutoSizeText(
                              "Day 01",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          height: size.height * 0.16,
                          child: ListView.builder(
                            itemCount: areas.length,
                            itemBuilder: (context, index) {
                              return AutoSizeText(
                                areas[index],
                                style: GoogleFonts.poppins(
                                    fontSize: 19,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w500),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            AutoSizeText("*Tap a schedule to start the Workout",
            style: GoogleFonts.poppins(

            ),),

          ],
        ),
      ),
    );
  }
}
