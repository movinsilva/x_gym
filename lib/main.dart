import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:x_gym/provider_models/dashboard_viewmodel.dart';
import 'package:x_gym/provider_models/my_history_viewmodel.dart';
import 'package:x_gym/provider_models/my_schedule_viewmodel.dart';
import 'package:x_gym/provider_models/second_tab_viewmodel.dart';
import 'package:x_gym/provider_models/tab_viewmodel.dart';
import 'package:x_gym/screens/all_exercises.dart';
import 'package:x_gym/screens/body_chart.dart';
import 'package:x_gym/screens/dashboard.dart';
import 'package:x_gym/screens/diet.dart';
import 'package:x_gym/screens/exercise_detail_screen.dart';
import 'package:x_gym/screens/home.dart';
import 'package:x_gym/screens/login_screen.dart';
import 'package:x_gym/screens/my_history.dart';
import 'package:x_gym/screens/my_schedule.dart';
import 'package:x_gym/screens/notices.dart';
import 'package:x_gym/screens/promotion.dart';
import 'package:x_gym/screens/register_screen.dart';
import 'package:x_gym/screens/trainers.dart';
import 'package:x_gym/screens/virtual_card.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DashboardViewModel()),
        ChangeNotifierProvider(create: (_) => MyHistoryViewModel(),),
        ChangeNotifierProvider(create: (_) => MyScheduleViewModel(),),
        ChangeNotifierProvider(create: (_) => TabViewModel(),),
        ChangeNotifierProvider(create: (_) => SecondeTabViewmodel(),)
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

    //Changed the colour of the status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/register": (context) => RegisterScreen(),
        "/dashboard": (context) => Dashboard(),
        "/diet": (context) => DietPage(),
        "/notices": (context) => NoticesPage(),
        "/promotions": (context) => PromotionPage(),
        "/virtualCard" : (context) => VirtualCard(),
        "/mySchedule" : (context) => MySchedule(),
        "/myHistory" : (context) => MyHistory(),
        "/trainers" : (context) => Trainers(),
        "/bodyChart" : (context) => BodyChart(),
        "/exerciseDetails" : (context) => ExerciseDetailScreen(),
        "/allExercises" : (context) => AllExercises(),
        "/home" : (context) => Home(),
      },
      home: LoginScreen(),
    );
  }
}
