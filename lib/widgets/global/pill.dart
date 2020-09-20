import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/styles/Pallete.dart';

class Pill extends StatelessWidget {
  // Hold the title for the pill
  final title;

  // Refer the function for the press action
  final onPressed;

  const Pill({Key key, @required this.title, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              title,
              style: GoogleFonts.poppins(
                color: Pallete.DefaultThemeColour,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.6,
              ),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Pallete.DefaultThemeColour, width: 2),
            borderRadius: BorderRadius.circular(25)
          ),
        ),
      ),
    );
  }
}
