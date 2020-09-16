/*
* Created by Movin on 16/09/2020
* */

import 'package:flutter/material.dart';
import 'package:x_gym/styles/Pallete.dart';

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

  // this will descide whether to scecure the inpur
  // or not
  final obscureText;


  InputFormField(this.label, this.hint, this.controller, this.keyboardType,
      this.obscureText);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Pallete.DefaultThemeColour,
            width: 4,
          )
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Pallete.DefaultThemeColour,
          ),
        ),
        labelText: label,
        hintText: hint,
      ),
    );
  }
}
