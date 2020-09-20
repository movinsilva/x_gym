/*
 * Created by Movin on 16/09/2020
 * */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/styles/Pallete.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class RegisterPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        SizedBox(
          height: 45,
        ),
        Container(
          height: 50,
          width: size.width*0.6,
          decoration: BoxDecoration(
            border: Border.all(
              color: Pallete.DefaultThemeColour,
              width: 3
            ),
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Center(
            child: AutoSizeText(
              "Registration Form",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Pallete.DefaultThemeColour,
              ),
            ),
          ),
        ),
        RegisterPageScrollablePart(),
      ],
    );
  }
}
