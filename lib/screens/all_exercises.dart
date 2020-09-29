/*
* created by Movin on 27/09/2020
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class AllExercises extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return DefaultScaffold(
      title: "All Exercises",
      interior: Column(
        children: <Widget>[
          TabLayout(["Chest", "Arms", "Shoulders", "Legs", "Back", "Abs"]),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                child: InkWell(
                  onTap: () => showDialog(

                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(

                      title: Text("Flat Bench Press B/B",
                        maxLines: 1,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),),
                      content: Container(
                        height: size.height*0.44,
                        width: size.width*0.8,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: size.height * 0.2,
                              width: size.width * 0.5,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 15),
                                  ],
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text("Alternatively, instead of using these methods, we can use Consumer and Selector. "
                                "These can be useful for performance optimizations or when it is difficult to obtain a"
                                " BuildContext descendant of the provider.See the FAQ or the documentation of Consumer a"
                                "nd Selector for more information.",
                            style: GoogleFonts.poppins(
                              fontSize: 13
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ),
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
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 8)
                            ],
                          ),
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
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
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
