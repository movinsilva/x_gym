import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:x_gym/provider_models/dashboard_viewmodel.dart';
import 'package:x_gym/screens/dashboard.dart';
import 'package:x_gym/screens/diet.dart';
import 'package:x_gym/screens/login_screen.dart';
import 'package:x_gym/screens/notices.dart';
import 'package:x_gym/screens/promotion.dart';
import 'package:x_gym/screens/register_screen.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DashboardViewModel()),
      ],
      child: MyApp(),
    ),
  );
}

// app preview with multiple display support
// void main() => runApp(
//  DevicePreview(
//    enabled: !kReleaseMode,
//    builder: (context) => MyApp(),
//  ),
// );

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      routes: {
        "/register": (context) => RegisterScreen(),
        "/dashboard": (context) => Dashboard(),
        "/diet": (context) => DietPage(),
        "/notices": (context) => NoticesPage(),
        "/promotions": (context) => PromotionPage(),
      },
      home: LoginScreen(),
    );
  }
}
