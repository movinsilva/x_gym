/*
* Created by Sandev on 22/09/2020
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:x_gym/constants/args/exercise_detail_args.dart';
import 'package:x_gym/provider_models/my_schedule_viewmodel.dart';
import 'package:x_gym/styles/Pallete.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class MySchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    // Get the instance for the
    // global key in the scaffold
    var scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: NavigationDrawer(),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Container(
              height: size.height,
              width: size.width,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.format_align_center),
                        onPressed: () {
                          scaffoldKey.currentState.openDrawer();
                        },
                      ),
                      Container(
                        decoration:BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 3
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Pallete.DefaultThemeColour,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:25.0,vertical: 3),
                          child: AutoSizeText(
                            "01 : 45 : 52",
                            maxLines: 1,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                      Image.asset("assets/black_logo.png",
                      height: 100,
                      width: 100,),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.greenAccent[400],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:14.0, vertical: 5),
                          child: AutoSizeText(
                            "Quick Start",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:14.0, vertical: 5),
                          child: AutoSizeText(
                            "Quick End",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Consumer<MyScheduleViewModel>(
                      builder: (context, model, widget) => Column(
                        children: [
                          TabLayout(["Day 1", "Day 2", "Abs workout"]),
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
                  ),
                ],
              ),
            ),
          ),
        ),

    );
  }
}
