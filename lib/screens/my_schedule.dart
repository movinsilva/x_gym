/*
* Created by Sandev on 22/09/2020
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:x_gym/provider_models/my_schedule_viewmodel.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class MySchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "My Schedule",
      interior: Consumer<MyScheduleViewModel>(
        builder: (context, model, widget) => Column(
          children: [
            TabLayout(["Day 1", "Day 2", "Abs workout"]),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          AutoSizeText(
                            "Chest",
                            maxLines: 1,
                            style:
                                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.grey[400]),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              height: 4,
                              color: Colors.grey[400],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                      for (int i = 0; i < 4; i++)
                        Dismissible(
                          key: Key((index + i).toString()),
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
                                  )
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
      ),
    );
  }
}
