/*
* Created by Sandev on 16/09/2020
*
* */

import 'package:flutter/material.dart';

class LineBreaker extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // get the current display size
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 50),
      child: SizedBox(width: 2, height: 2, child: Container(
          color: Colors.grey.withOpacity(0.8)
      ),),
    );
  }
}
