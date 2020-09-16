/*
* Created by Movin on 16/09/2020
* */
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:x_gym/styles/pallete.dart';
import 'package:x_gym/widgets/global/input_form_field.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class LoginScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: FittedBox(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/login_bg_image.png"),
          )),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: InputFormField(
                  label: "Email",
                  iconData: Icons.email,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: InputFormField(
                  label: "Password",
                  iconData: Icons.lock,
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Pallete.DefaultThemeColour,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize:18
                        ),
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
                  style: GoogleFonts.poppins(
                    color: Colors.white54
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  AutoSizeText(
                    "Slide to Start up your Membership",
                    style: GoogleFonts.poppins(
                      color: Colors.white
                    ),
                  ),
                  /*
                          * tween animation builder added to move the arrows
                          * */
                  TweenAnimationBuilder(
                    duration: Duration(milliseconds: 750),
                    tween: Tween<double>(begin: -40, end: 50),
                    builder: (_, double value, __) {
                      return Transform.translate(
                        offset: Offset(value, 0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 30,
                        ),
                      );
                    },
                  ),
                  TweenAnimationBuilder(
                    duration: Duration(milliseconds: 750),
                    tween: Tween<double>(begin: -50, end: 7),
                    builder: (_, double value, __) {
                      return Transform.translate(
                        offset: Offset(value, 0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 30,
                        ),
                      );
                    },
                  ),
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
                    width: size.width*0.3,
                    color: Colors.white54,
                  ),
                  AutoSizeText(
                    "Contact Us",
                    style: GoogleFonts.poppins(
                      color: Colors.white
                    ),
                  ),
                  Container(
                    height: 5,
                    width: size.width*0.3,
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
