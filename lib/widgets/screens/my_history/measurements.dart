import 'package:flutter/material.dart';

import '../../widgets_library.dart';

class Measurements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MeasurementsGraph(),
      ],
    );
  }
}
