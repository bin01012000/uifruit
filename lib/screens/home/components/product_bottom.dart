import 'package:flutter/material.dart';
import 'package:ui_fruit/screens/home/components/product_card.dart';

import '../../../size_config.dart';

class ProductBottom extends StatelessWidget {
  const ProductBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const ProductCard(
            img: "assets/images/fruit3.png",
            name: "Quinoa fruit salad",
            price: "10,000",
            color: Color(0xffFFFAEB),
          ),
          SizedBox(width: getProportionateScreenWidth(23)),
          const ProductCard(
            img: "assets/images/fruit4.png",
            name: "Tropical fruit salad",
            price: "10,000",
            color: Color(0xffFEF0F0),
          ),
          SizedBox(width: getProportionateScreenWidth(23)),
          const ProductCard(
            img: "assets/images/fruit5.png",
            name: "Melon fruit salad",
            price: "10,000",
            color: Color(0xffF1EFF6),
          ),
        ],
      ),
    );
  }
}
