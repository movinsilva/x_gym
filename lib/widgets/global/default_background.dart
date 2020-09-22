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

class DefaultScaffold extends StatefulWidget {
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
  _DefaultScaffoldState createState() => _DefaultScaffoldState();
}

class _DefaultScaffoldState extends State<DefaultScaffold> {
  @override
  Widget build(BuildContext context) {
    // Get the size of the current screen
    final size = MediaQuery.of(context).size;

    // Get the instance for the
    // global key in the scaffold
    var scaffoldKey = GlobalKey<ScaffoldState>();

    // arrays for the drawer and the image data for the
    // icons
    var drawer_titles = [
      "Dashboard",
      "Virtual Card",
      "My Schedule",
      "Diet Schedule",
      "Body Chart",
      "My History",
      "All Schedules",
      "Trainers",
      "Promotions",
      "Notices",
      "About Us",
      "Settings",
      "Help"
    ];
    var drawer_icons = [
      Icons.pie_chart,
      Icons.credit_card,
      Icons.calendar_today,
      Icons.fastfood,
      Icons.show_chart,
      Icons.calendar_today,
      Icons.calendar_today,
      Icons.people,
      Icons.notifications,
      Icons.notifications_active,
      Icons.screen_share,
      Icons.settings,
      Icons.help
    ];

    var drawer_routes = [
      "/dashboard",
      "/dashboard",
      "/dashboard",
      "/diet",
      "/dashboard",
      "/dashboard",
      "/dashboard",
      "/dashboard",
      "/promotions",
      "/notices",
      "/dashboard",
      "/dashboard",
      "/dashboard",
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      body: FittedBox(
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
                                    BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16, right: 25, top: 3, bottom: 3),
                              child: Text(
                                widget.title,
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
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: widget.interior,
                ), // Expanded(child: interior)
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
                              AutoSizeText(
                                "Sandev Kuruppu",
                                style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w700),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                              AutoSizeText(
                                "235698",
                                style: GoogleFonts.poppins(fontSize: 30, color: Colors.white),
                                maxLines: 1,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      )
                    ],
                  ),
                )),
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
                          BoxShadow(color: Colors.black, blurRadius: 15, offset: Offset(10, 10), spreadRadius: -10)
                        ]),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: ListView.builder(
                      itemBuilder: (context, index) => DrawerTile(
                        isSelected: index == RuntimeConstants.selectIndex,
                        title: drawer_titles[index],
                        iconData: drawer_icons[index],
                        onTap: () {
                          RuntimeConstants.currentPageName = drawer_titles[index];
                            RuntimeConstants.selectIndex = index;
                            Navigator.of(context).pushReplacementNamed(drawer_routes[index]);
                        },
                      ),
                      itemCount: drawer_titles.length,
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
