import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class MyHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "My History",
      interior: Column(
        children: <Widget>[
          TabLayout(["Attendance", "Measurements", "Diet", "Payments"]),
         Attendance(),
        ],
      ),
    );
  }
}
