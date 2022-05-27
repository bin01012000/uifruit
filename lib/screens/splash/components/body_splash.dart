import 'package:flutter/material.dart';

class BodySplash extends StatelessWidget {
  const BodySplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/images/splash.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
