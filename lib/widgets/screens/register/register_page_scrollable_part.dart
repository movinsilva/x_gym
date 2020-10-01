/*/
* Created by  Movin on 18/09/2020
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/styles/Pallete.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class RegisterPageScrollablePart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child:
                  RegisterInputFormField(
                    label: "First Name",
                  )
              ),
              Expanded(
                flex: 1,
                child: RegisterInputFormField(
                  label: "Last Name",
                ),
              )
            ],
          ),
          RegisterInputFormField(
            label: "Nic No",
            hint: "Leave it if you are below 18",
          ),
          RegisterInputFormField(
            label: "Phone",
          ),
          RegisterInputFormField(
            label: "Email",
          ),
          RegisterInputFormField(
            label: "Password",
            obscureText: true,
          ),
          RegisterInputFormField(
            label: "Confirm Password",
            obscureText: true,
          ),
          RegisterInputFormField(
            label: "Address",
          ),
          RegisterInputFormField(
            label: "Country",
          ),
          RegisterInputFormField(
            label: "Birthday",
            keyboardType: TextInputType.datetime,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Pallete.DefaultThemeColour,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0,vertical: 6),
                  child: AutoSizeText(
                    "Submit",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
