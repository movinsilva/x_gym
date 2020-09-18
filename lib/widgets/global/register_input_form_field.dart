/*
* Created by Movin on 18/09/2020
* */

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/styles/Pallete.dart';

class RegisterInputFormField extends StatelessWidget {
  // this will store the value for the label
  // this is provided by the constructor
  final label;

  // this will store the value for the hint
  // this is provided by the constructor
  final hint;

  // this will store the value for the controller
  // this is provided by the constructor
  // use this to get the current details of the form field
  final controller;

  // this will decide the keyboard type of the input
  // field
  final keyboardType;


  // this will descide whether to scecure the inpur
  // or not
  final obscureText;

  const RegisterInputFormField({Key key, this.label, this.hint, this.controller, this.keyboardType, this.obscureText = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:30.0, vertical: 6),
      child: TextFormField(
        cursorColor: Pallete.DefaultThemeColour,
        style: TextStyle(
            color: Colors.white54
        ),
        obscureText: obscureText,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3,
              )
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white,
                width: 4
            ),
          ),
          labelText: label,
          labelStyle: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20
          ),
          counterStyle: GoogleFonts.poppins(
            color: Colors.white,
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
