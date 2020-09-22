/*
* Created by Movin on 16/09/2020
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:x_gym/constants/runtime_constants.dart';
import 'package:x_gym/database_helper/database_helper.dart';
import 'package:x_gym/styles/Pallete.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class LoginPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Image(
                image: AssetImage("assets/transparent_logo.png"),
              ),
              AutoSizeText(
                "Login to Stay Fit",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 23,
                  color: Pallete.DefaultThemeColour,
                ),
              ),
                InputFormField(
                  label: "Email",
                  iconData: Icons.email,
                ),
              SizedBox(
                height: 8,
              ),
              InputFormField(
                  label: "Password",
                  iconData: Icons.lock,
                  obscureText: true,
                ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed("/dashboard");
                  RuntimeConstants.currentPageName = "Dashboard" ;

                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Pallete.DefaultThemeColour,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: Text(
                          "Sign in",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: AutoSizeText(
                  "Forgot Password?",
                  style: GoogleFonts.poppins(color: Colors.white54),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  AutoSizeText(
                    "Start up your Membership",
                    style: GoogleFonts.poppins(color: Colors.white,
                    fontSize: 15),
                  ),
                  AutoSizeText(
                    ">>>",
                    style: GoogleFonts.poppins(color: Colors.white,
                        fontSize: 35,
                    fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context). pushNamed("/register");
                    },
                    child: Container(
                      width: size.width*0.2,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Pallete.DefaultThemeColour,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Center(
                        child: Text(
                          "Register",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 5,
                    width: size.width * 0.3,
                    color: Colors.white54,
                  ),
                  AutoSizeText(
                    "Contact Us",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                  Container(
                    height: 5,
                    width: size.width * 0.3,
                    color: Colors.white54,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      MdiIcons.facebook,
                      color: Colors.white,
                      size: 34,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      MdiIcons.instagram,
                      color: Colors.white,
                      size: 35,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      MdiIcons.linkedin,
                      color: Colors.white,
                      size: 38,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
