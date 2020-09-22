/*
* Created By Movin on 16/09/2020
* */

import 'package:flutter/material.dart';
import 'package:x_gym/widgets/screens/register/register_page_view.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body:  Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/login_bg_image.png"
              )
            )
          ),
          child: RegisterPageView(),
        ),
    );
  }
}
