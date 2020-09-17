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
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child:
                      InputFormField(
                        label: "First Name",
                      )
                    ),
                    Expanded(
                      flex: 1,
                      child: InputFormField(
                        label: "Last Name",
                      ),
                    )
                  ],
                ),
                InputFormField(
                  label: "Nic No",
                  hint: "Leave it if you are below 18",
                ),
                InputFormField(
                  label: "Phone",
                ),
                InputFormField(
                  label: "Email",
                ),
                InputFormField(
                  label: "Password",
                  obscureText: true,
                ),
                InputFormField(
                  label: "Confirm Password",
                  obscureText: true,
                ),
                InputFormField(
                  label: "Address",
                ),
                InputFormField(
                  label: "Country",
                ),
                InputFormField(
                  label: "Birthday",
                  keyboardType: TextInputType.datetime,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
