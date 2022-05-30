import 'package:flutter/material.dart';
import 'package:ui_fruit/screens/authentication/authentication_screen.dart';
import 'package:ui_fruit/screens/basket/basket_screen.dart';
import 'package:ui_fruit/screens/detail/detail_screen.dart';
import 'package:ui_fruit/screens/home/home_screen.dart';
import 'package:ui_fruit/screens/splash/splash_screen.dart';
import 'package:ui_fruit/screens/welcome/welcome_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
  AuthenticationScreen.routeName: (context) => const AuthenticationScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailScreen.routeName: (context) => const DetailScreen(),
  BasketScreen.routeName: (context) => const BasketScreen(),
};
