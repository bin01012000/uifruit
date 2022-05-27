import 'package:flutter/material.dart';
import 'package:ui_fruit/screens/home/home_screen.dart';
import 'package:ui_fruit/size_config.dart';

import '../../../components/default_button.dart';
import '../../../components/welcome_image.dart';

class BodyAuthentication extends StatelessWidget {
  const BodyAuthentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WelcomeImage(
            img: "assets/images/authenticationfruit.png",
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24),
                vertical: getProportionateScreenWidth(56)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "What is your firstname?",
                  style: TextStyle(
                      color: Color(0xff27214d),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Dier'),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(42),
                ),
                DefaultButton(
                  txt: "Start Ordering",
                  press: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
