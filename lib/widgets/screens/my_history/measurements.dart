import 'package:flutter/material.dart';

import '../../widgets_library.dart';

class Measurements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MeasurementsGraph(),
        // GridView.count(
        //           crossAxisCount: 2,
        //           children: <Widget>[
        //             Container(
        //               height: 150,
        //               width: 300,
        //               decoration: BoxDecoration(
        //                 color: Colors.orange[200]
        //               ),
        //             )
        //           ],
        //
        //         ),
      ],
    );
  }
}
