/*
* Created by sandev on 16/09/2020
*
* */

import 'package:flutter/material.dart';

class DefaultScaffold extends StatelessWidget {

  // This will hold all the interior widgets
  // passed in to the constructor
  //
  // Compulsory to pass the required widget
  final interior;

  const DefaultScaffold({Key key, @required this.interior}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Get the size of the current screen
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: FittedBox(
        fit: BoxFit.contain,
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          IconButton(icon: Icon(Icons.menu), onPressed: (){},)
                        ],
                      )
                    ],
                  ),
                  Image.asset("assets/black_logo.png")
                ],
              )
            ],
          )
          ),
        ),
    );
  }
}
