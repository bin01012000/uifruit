import 'package:flutter/material.dart';
import 'package:ui_fruit/screens/detail/detail_screen.dart';
import 'package:ui_fruit/screens/home/components/product_card.dart';

import '../../../size_config.dart';

class ProductRecommended extends StatelessWidget {
  const ProductRecommended({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductCard(
            img: "assets/images/fruit1.png",
            name: "Honey lime combo",
            price: "2,000",
            color: Colors.white,
            press: () {
              Navigator.pushNamed(context, DetailScreen.routeName);
            },
          ),
          SizedBox(width: getProportionateScreenWidth(23)),
          ProductCard(
            img: "assets/images/fruit2.png",
            name: "Berry mango combo",
            price: "8,000",
            color: Colors.white,
            press: () {
              Navigator.pushNamed(context, DetailScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
