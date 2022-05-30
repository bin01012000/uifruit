import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_fruit/screens/splash/components/body_splash.dart';
import 'package:ui_fruit/screens/welcome/welcome_screen.dart';

import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Timer(const Duration(seconds: 6), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const WelcomeScreen()));
    });
    return const Scaffold(
      body: BodySplash(),
    );
  }
}
