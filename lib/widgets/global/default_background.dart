/*
* Created by sandev on 16/09/2020
*
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/constants/runtime_constants.dart';
import 'package:x_gym/widgets/widgets_library.dart';
import '../../styles/Pallete.dart';
import 'drawer_tile.dart';

class DefaultScaffold extends StatelessWidget {
  // This will hold all the interior widgets
  // passed in to the constructor
  //
  // Compulsory to pass the required widget
  final interior;

  // title for the specific page
  // page and replace the header
  final title;

  const DefaultScaffold({Key key, @required this.interior, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the size of the current screen
    final size = MediaQuery
        .of(context)
        .size;

    // Get the instance for the
    // global key in the scaffold
    var scaffoldKey = GlobalKey<ScaffoldState>();


    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      body: Container(
        width: size.width,
        height: size.height,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Container(
              width: size.width,
              height: size.height,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.format_align_center),
                                  onPressed: () {
                                    scaffoldKey.currentState.openDrawer();
                                  },
                                ),
                                Spacer(),
                                Text(
                                  "Fitness.lk",
                                  style: GoogleFonts.poppins(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Pallete.DefaultThemeColour,
                                  borderRadius:
                                  BorderRadius.only(topRight: Radius.circular(25),
                                      bottomRight: Radius.circular(25))),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 25, top: 3, bottom: 3),
                                child: AutoSizeText(
                                  title,
                                  maxLines: 1,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 3, child: Image.asset("assets/black_logo.png"))
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: interior,
                  ), // Expanded(child: interior)
                ],
              ),
          ),
        ),
      ),
      drawer: NavigationDrawer(),
    );
  }
}
