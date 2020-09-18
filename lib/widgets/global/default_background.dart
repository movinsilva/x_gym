/*
* Created by sandev on 16/09/2020
*
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    final size = MediaQuery.of(context).size;

    // Get the instance for the
    // global key in the scaffold
    var scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      body: FittedBox(
        fit: BoxFit.contain,
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
                                    BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16, right: 25, top: 3, bottom: 3),
                              child: Text(
                                "Title",
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
                    Expanded(flex: 3, child: Image.asset("assets/black_logo.png"))
                  ],
                ),
                interior, // Expanded(child: interior)
              ],
            )),
      ),
      drawer: Container(
        width: size.width * 0.72,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                  color: Pallete.DefaultThemeColour,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                  ),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    ClipOval(
                      child: CachedNetworkImage(
                        width: size.height * 0.1,
                        height: size.height * 0.1,
                        imageUrl: "http://35.247.188.34/client1.png",
                        placeholder: (context, url) => CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AutoSizeText("Sandev Kuruppu", style: GoogleFonts.poppins(fontSize: 25, fontWeight:
                            FontWeight.w700),
                              maxLines: 2,
                              textAlign: TextAlign.center,),
                            AutoSizeText("235698", style: GoogleFonts.poppins(fontSize: 30, color: Colors.white), maxLines:
                            1,)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    )
                  ],
                ),
              )
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    color: Pallete.DefaultThemeColour,
                    width: 100,
                    height: double.infinity,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 15,
                            offset: Offset(10, 10),
                            spreadRadius: -10
                          )
                        ]),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: ListView(
                              children: [
                                DrawerTile(
                                  title: "Dashboard",
                                  iconData: Icons.pie_chart,
                                  onTap: () {},
                                ),
                                DrawerTile(
                                  title: "Virtual card",
                                  onTap: () {},
                                  iconData: Icons.credit_card,
                                ),
                                LineBreaker(),
                                DrawerTile(
                                  title: "My schedule",
                                  onTap: () {},
                                  iconData: Icons.calendar_today,
                                ),
                                DrawerTile(
                                  title: "Diet schedules",
                                  onTap: () {},
                                  iconData: Icons.fastfood,
                                ),
                                DrawerTile(
                                  title: "Body chart",
                                  onTap: () {},
                                  iconData: Icons.show_chart,
                                ),
                                DrawerTile(
                                  title: "My history",
                                  onTap: () {},
                                  iconData: Icons.calendar_today,
                                ),
                                LineBreaker(),
                                DrawerTile(
                                  title: "All schedules",
                                  onTap: () {},
                                  iconData: Icons.calendar_today,
                                ),
                                DrawerTile(
                                  title: "Trainers",
                                  onTap: () {},
                                  iconData: Icons.people,
                                ),
                                DrawerTile(
                                  title: "Promotions",
                                  onTap: () {},
                                  iconData: Icons.notifications,
                                ),
                                DrawerTile(
                                  title: "Notices",
                                  onTap: () {},
                                  iconData: Icons.notifications_active,
                                ),
                                DrawerTile(
                                  title: "About us",
                                  onTap: () {},
                                  iconData: Icons.screen_share,
                                ),
                                LineBreaker(),
                                DrawerTile(
                                  title: "Settings",
                                  onTap: () {},
                                  iconData: Icons.settings,
                                ),
                                DrawerTile(
                                  title: "Help",
                                  onTap: () {},
                                  iconData: Icons.help,
                                )
                              ],
                            ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
