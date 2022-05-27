import 'package:flutter/material.dart';
import 'package:ui_fruit/screens/welcome/components/body_welcome.dart';

import '../../size_config.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = '/welcome';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: BodyWelcome(),
    );
  }
}
