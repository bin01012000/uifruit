import 'package:flutter/material.dart';
import 'package:ui_fruit/screens/authentication/components/body_authentication.dart';

class AuthenticationScreen extends StatelessWidget {
  static String routeName = '/authentication';
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyAuthentication(),
    );
  }
}
