/*
* Created by Movin on 16/09/2020
* */

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/styles/pallete.dart';

class InputFormField extends StatelessWidget {

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

  final IconData iconData;

  // this will descide whether to scecure the inpur
  // or not
  final obscureText;

  const InputFormField({Key key, this.label, this.hint, this.controller, this.keyboardType, this.obscureText = false, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: Colors.white54
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(iconData,color: Colors.white,),
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
          fontSize: 18
        ),
        counterStyle: GoogleFonts.poppins(
          color: Colors.white,
        ),
        hintText: hint,
      ),
    );
  }
}
