import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:x_gym/provider_models/my_history_viewmodel.dart';
import 'package:x_gym/provider_models/tab_viewmodel.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class MyHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "My History",
      interior: Column(
        children: <Widget>[
          TabLayout(["Attendance", "Measurements", "Payments", "Schedules", "Diet"]),
          Consumer<TabViewModel>(
            builder: (context, model, widget) {
              switch (model.index) {
                case 0:
                  return Attendance();
                case 1:
                  return Measurements();
                case 2:
                  return Payments();
                case 3:
                  return Schedules();
                case 4:
                  return Diet();
                default:
                  return Placeholder();
              }
            },
          ),
        ],
      ),
    );
  }
}
