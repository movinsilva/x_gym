import 'package:flutter/material.dart';

import '../../widgets_library.dart';

class Measurements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        MeasurementsGraph(),
        Container(
          height: size.height*0.42,
          child:
          MeasurementBoxes(),
        )
      ],
    );
  }
}
