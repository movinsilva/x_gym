/*
* created by Movin on 28/09/2020
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:x_gym/constants/args/exercise_detail_args.dart';
import 'package:x_gym/provider_models/second_tab_viewmodel.dart';
import 'package:x_gym/styles/Pallete.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class Schedules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> list = ["Day 01", "Day 02", "Abs Workout"];

    return Expanded(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  InkWell(
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                  AutoSizeText(
                    "Schedule 01",
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        color: Colors.black38,
                        fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              AutoSizeText(
                "12/12/2020",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.grey),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            child: Consumer<SecondeTabViewmodel>(
              builder: (context, model, widget) => ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => model.index= index,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: model.index == index ? Pallete.DefaultThemeColour : Colors.transparent
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AutoSizeText(
                          "Day 01",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Container(
                child: Column(
                  children: [
                    HeaderWithRightLine(title: "Chest"),
                    for (int i = 0; i < 4; i++)
                      Dismissible(
                        key: Key((index + i).toString()),
                        confirmDismiss: (direction) async {
                          Navigator.pushNamed(context, "/exerciseDetails",
                              arguments: ExerciseDetailArgs("Flat Bench Press B/B", "Chest", [12, 10, 8], [1, 2, 1]));
                          return false;
                        },
                        background: Container(
                          color: Colors.green,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.access_alarm,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        secondaryBackground: Container(
                          color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.notifications_active,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
