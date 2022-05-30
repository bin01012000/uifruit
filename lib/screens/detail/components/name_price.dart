import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/rounded_icon.dart';
import '../../../size_config.dart';

class NamePrice extends StatelessWidget {
  const NamePrice({
    Key? key,
    required this.name,
    required this.qty,
    required this.price,
  }) : super(key: key);

  final String name;
  final int qty;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(24),
          right: getProportionateScreenWidth(24),
          top: getProportionateScreenHeight(40)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(name,
              style: TextStyle(
                  color: Color.fromRGBO(39, 33, 77, 1),
                  fontSize: 32,
                  fontWeight: FontWeight.normal)),
          SizedBox(
            height: getProportionateScreenWidth(23),
          ),
          Row(
            children: [
              RoundedIcon(
                bgColor: Colors.white,
                icons: Icons.remove,
                borderColor: Colors.black,
                iconColor: Colors.black,
              ),
              SizedBox(width: getProportionateScreenWidth(24)),
              Text(
                qty.toString(),
                style: TextStyle(
                    color: Color(0xff27214d),
                    fontWeight: FontWeight.normal,
                    fontSize: 24),
              ),
              SizedBox(width: getProportionateScreenWidth(24)),
              RoundedIcon(),
              Spacer(),
              SvgPicture.asset(
                "assets/icons/dollar.svg",
                color: Colors.black,
                width: getProportionateScreenWidth(20),
                height: getProportionateScreenWidth(16),
              ),
              Text(
                price.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
