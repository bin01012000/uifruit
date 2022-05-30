import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);
  final String title, desc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 2, color: Color(0xffFFA451)))),
            child: Text(
              title,
              style: TextStyle(
                color: Color.fromRGBO(39, 33, 77, 1),
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(18)),
          Text(
            desc,
            style: TextStyle(
              color: Color.fromRGBO(39, 33, 77, 1),
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
