import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class VirtualCard extends StatelessWidget {
  // Get the instance for the
  // global key in the scaffold

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      drawer: NavigationDrawer(),
      body: FittedBox(
        fit: BoxFit.scaleDown,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/id_bg.jpg"),
            ),
          ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: size.height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "New Login",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 1,
                        ),
                        IconButton(
                          onPressed: () {
                            scaffoldKey.currentState.openDrawer();
                          },
                          icon: Icon(
                            Icons.format_align_center,
                          ),
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        AutoSizeText(
                          "Fitness.lk",
                          style: GoogleFonts.poppins(
                            fontSize: 29,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Image(
                      height: size.height * 0.18,
                      width: size.width * 0.35,
                      image: AssetImage("assets/id_gym_logo.png"),
                    ),
                    AutoSizeText(
                      "\"If you get tired, learn to rest,",
                      style: GoogleFonts.ranchers(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        letterSpacing: 2,
                        fontStyle: FontStyle.italic,
                        color: Colors.black45,
                      ),
                    ),
                    AutoSizeText(
                      "learn to quit \"",
                      style: GoogleFonts.ranchers(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 3,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.black45,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          height: 140,
                          width: 140,
                          image: AssetImage(
                            "assets/profile_pic.jpg",
                          ),
                        ),
                      ),
                    ),
                    AutoSizeText(
                      "Sandev Kuruppu",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    AutoSizeText(
                      "1656456",
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45),
                    ),
                    QrImage(
                      data: "Sandev Dewthilina Kuruppu",
                      version: QrVersions.auto,
                      backgroundColor: Colors.white,
                      size: 200.0,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    AutoSizeText(
                      "Expires on 31/09/2020",
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.black45),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 180,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Center(
                          child: Text(
                            "Enter",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700, fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    )
                  ],
                ),
              ),
          ),
    );
  }
}
