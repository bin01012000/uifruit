import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.img,
    required this.price,
    required this.name,
    required this.color,
  }) : super(key: key);
  final String img, price, name;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(152),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(32, 32, 32, 0.05),
                    offset: Offset(0, 30),
                    blurRadius: 60,
                  )
                ]),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(16),
                      vertical: getProportionateScreenWidth(24)),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: 0,
                        child: SvgPicture.asset("assets/icons/heart.svg"),
                      ),
                      Column(
                        children: [
                          Image.asset(
                            img,
                            fit: BoxFit.cover,
                            width: getProportionateScreenWidth(64),
                            height: getProportionateScreenWidth(64),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            name,
                            maxLines: 1,
                            style: const TextStyle(
                                color: Color(0xff27214d),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              SvgPicture.asset("assets/icons/dollar.svg"),
                              Text(
                                price,
                                style: const TextStyle(
                                    color: Color(0xfff08626),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              const Spacer(),
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  color: Color(0xffFFF2E7),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Color(0xffFFA451),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
