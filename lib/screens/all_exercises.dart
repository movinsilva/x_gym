/*
* created by Movin on 27/09/2020
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class AllExercises extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "All Exercises",
      interior: Column(
        children: <Widget>[
          TabLayout(["Chest", "Abs", "Shoulders", "Abs", "Arms", "Legs"]),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                child: InkWell(
                  onTap: () => showDialog(context: context,
                  builder: (_) => AlertDialog(
                    
                  )),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.ac_unit,
                            size: 60,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)]),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              AutoSizeText(
                                "Flat Bench Press B/B",
                                maxLines: 1,
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              AutoSizeText(
                                "12 x 1  10 x 2  8 x 1  ",
                                maxLines: 1,
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
