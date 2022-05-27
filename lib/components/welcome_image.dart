import 'package:flutter/material.dart';
import 'package:ui_fruit/size_config.dart';

import '../../../common/constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kPrimaryColor,
      ),
      child: SizedBox(
        height: getProportionateScreenHeight(469),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(img),
            ),
            const SizedBox(
              height: 8,
            ),
            Align(
              child: Container(
                width: getProportionateScreenWidth(301),
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenWidth(6)),
                decoration: const BoxDecoration(
                  color: Color(0xffF08626),
                  borderRadius: BorderRadius.all(Radius.elliptical(100, 10)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
