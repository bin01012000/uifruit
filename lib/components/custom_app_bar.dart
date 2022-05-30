import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.paddingtop = 20,
  }) : super(key: key);

  final double paddingtop;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFA451),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
                top: getProportionateScreenHeight(paddingtop),
                left: getProportionateScreenWidth(24)),
            child: Row(
              children: [
                Container(
                  width: getProportionateScreenWidth(80),
                  height: getProportionateScreenHeight(32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/icons/arrowback.svg"),
                        SizedBox(
                          width: getProportionateScreenWidth(4),
                        ),
                        Text(
                          "Go back",
                          style: TextStyle(
                            color: Color(0xff27214d),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
