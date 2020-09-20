import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/styles/Pallete.dart';
import 'package:x_gym/widgets/global/pill.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class DietPage extends StatefulWidget {
  @override
  _DietPageState createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "Diets",
      interior: Container(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      "My diet",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600, letterSpacing: 0.6, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 40,
                      height: 5,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(25), color: Pallete.DefaultThemeColour),
                    )
                  ],
                ),
                Spacer(),
                Pill(
                    title: "Select diet",
                    onPressed: () {
                      showCupertinoDialog(
                        context: context,
                        builder: (BuildContext context) => SelectDietAlertDialog(
                          title: Text("Diet list"),
                          content: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Diet at 2020-10-11",
                                style: GoogleFonts.poppins(fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Diet at 2019-12-12",
                                style: GoogleFonts.poppins(fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Diet at 2021-07-22",
                                style: GoogleFonts.poppins(fontSize: 20),
                              ),
                            ],
                          ),
                          actions: [
                            new FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              textColor: Theme.of(context).primaryColor,
                              child: const Text("Okay, got it!"),
                            ),
                          ],
                        ),
                      );
                    }),
                Pill(
                    title: "Edit diet",
                    onPressed: () {
                      showCupertinoDialog(
                        context: context,
                        builder: (BuildContext context) => SelectDietAlertDialog(
                          title: CupertinoTextField(),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Breakfast",
                                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),
                                ),
                                CupertinoTextField(
                                  keyboardType: TextInputType.multiline,
                                  minLines: 5,
                                  maxLines: 10,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Lunch",
                                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),
                                ),
                                CupertinoTextField(
                                  keyboardType: TextInputType.multiline,
                                  minLines: 5,
                                  maxLines: 10,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Dinner",
                                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),
                                ),
                                CupertinoTextField(
                                  keyboardType: TextInputType.multiline,
                                  minLines: 5,
                                  maxLines: 10,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Post workout",
                                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),
                                ),
                                CupertinoTextField(
                                  keyboardType: TextInputType.multiline,
                                  minLines: 5,
                                  maxLines: 10,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Pre workout",
                                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),
                                ),
                                CupertinoTextField(
                                  keyboardType: TextInputType.multiline,
                                  minLines: 5,
                                  maxLines: 10,
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            new FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              textColor: Theme.of(context).primaryColor,
                              child: const Text('Cancel'),
                            ),
                            new FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              textColor: Theme.of(context).primaryColor,
                              child: const Text('Save'),
                            ),
                          ],
                        ),
                      );
                    }),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Breakfast",
                          style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),
                        ),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor "
                            "incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Lunch",
                          style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),
                        ),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor "
                            "incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Dinner",
                          style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),
                        ),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor "
                            "incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Post workout",
                          style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),
                        ),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor "
                            "incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Pre workout",
                          style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),
                        ),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor "
                            "incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                      ],
                    ),
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
