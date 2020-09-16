import 'package:flutter/material.dart';
import 'package:x_gym/screens/login_screen.dart';
import 'package:x_gym/widgets/widgets_library.dart';

import 'screens/login_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
