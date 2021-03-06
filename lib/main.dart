import 'package:flutter/material.dart';
import 'package:ui_fruit/screens/home/home_screen.dart';
import 'package:ui_fruit/screens/splash/splash_screen.dart';
import 'package:ui_fruit/screens/welcome/welcome_screen.dart';

import 'common/routes.dart';
import 'common/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dier Nong Trai',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
