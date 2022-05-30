import 'package:flutter/material.dart';
import 'package:ui_fruit/screens/home/components/product_bottom.dart';
import 'package:ui_fruit/screens/home/components/product_recommended.dart';
import 'package:ui_fruit/screens/home/components/search_filter.dart';
import 'package:ui_fruit/size_config.dart';

import 'all_title_active.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            left: getProportionateScreenWidth(24),
            right: getProportionateScreenWidth(24),
            bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text.rich(
              TextSpan(
                text: "Hello Dier, ",
                style: TextStyle(
                    color: Color(0xff27214d),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                children: [
                  TextSpan(
                    text: "What fruit salad \ncombo do you want today?",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(24)),
            const SearchFilter(),
            SizedBox(height: getProportionateScreenWidth(40)),
            const Text(
              "Recommended Combo",
              style: TextStyle(
                  color: Color(0xff27214d),
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: getProportionateScreenWidth(24)),
            const ProductRecommended(),
            SizedBox(height: getProportionateScreenHeight(53)),
            const AllTitleActive(),
            SizedBox(height: getProportionateScreenHeight(24)),
            const ProductBottom(),
          ],
        ),
      ),
    );
  }
}
