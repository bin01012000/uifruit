import 'package:flutter/material.dart';
import 'package:ui_fruit/size_config.dart';

const kPrimaryColor = Color(0xFFFFa451);
const kPrimaryLightColor = Color(0xFFFFF2E7);

const kSecondaryColor = Color(0xFFF3F1F1);
const kTextColor = Color(0xFF5D577E);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: const Color(0xff27214D),
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}
