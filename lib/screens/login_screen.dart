/*
* Created by Movin on 16/09/2020
* */
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_gym/widgets/screens/login/login_page_view.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
            image: AssetImage("assets/login_bg_image.png"),
          )),
          child: LoginPageView(),
        ),
    );
  }
}
