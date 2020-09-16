/*
* Created by Movin on 16/09/2020
* */
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/styles/Pallete.dart';


class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return  Scaffold(
          backgroundColor: Colors.transparent,
          body: FittedBox(
            child: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/login_bg_image.png"),
                )
              ),
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
                  )],
              ),
            ),
          ),
    );
  }
}
