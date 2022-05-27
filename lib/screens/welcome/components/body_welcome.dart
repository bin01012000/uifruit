// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:ui_fruit/screens/authentication/authentication_screen.dart';
import 'package:ui_fruit/size_config.dart';
import '../../../components/default_button.dart';
import '../../../components/welcome_image.dart';

class BodyWelcome extends StatelessWidget {
  const BodyWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WelcomeImage(
            img: "assets/images/welcomefruit.png",
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24),
                vertical: getProportionateScreenWidth(56)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Get The Freshest Fruit Salad Combo",
                  style: TextStyle(
                      color: Color(0xff27214d),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                  style: TextStyle(
                      color: Color(0xff5D577E),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 58,
                ),
                DefaultButton(
                  txt: "Let's Continue",
                  press: () {
                    Navigator.pushNamed(
                        context, AuthenticationScreen.routeName);
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
