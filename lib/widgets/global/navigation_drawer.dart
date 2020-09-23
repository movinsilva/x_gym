import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/constants/runtime_constants.dart';
import 'package:x_gym/styles/Pallete.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class NavigationDrawer extends StatelessWidget {

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
    "/virtualCard",
    "/mySchedule",
    "/diet",
    "/dashboard",
    "/myHistory",
    "/dashboard",
    "/dashboard",
    "/promotions",
    "/notices",
    "/dashboard",
    "/dashboard",
    "/dashboard",
  ];


  @override
  Widget build(BuildContext context) {

    // Get the size of the current screen
    final size = MediaQuery
        .of(context)
        .size;

    return Container(
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
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30)),
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
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            Icon(Icons.error),
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
                              style: GoogleFonts.poppins(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                              maxLines: 2,
                              textAlign: TextAlign.center,
                            ),
                            AutoSizeText(
                              "235698",
                              style: GoogleFonts.poppins(
                                  fontSize: 30, color: Colors.white),
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
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(color: Colors.black,
                            blurRadius: 15,
                            offset: Offset(10, 10),
                            spreadRadius: -10)
                      ]),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        DrawerTile(
                          isSelected: index == RuntimeConstants.selectIndex,
                          title: drawer_titles[index],
                          iconData: drawer_icons[index],
                          onTap: () {
                            RuntimeConstants.currentPageName =
                            drawer_titles[index];
                            RuntimeConstants.selectIndex = index;
                            Navigator.of(context).pushReplacementNamed(
                                drawer_routes[index]);
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
    );
  }
}
