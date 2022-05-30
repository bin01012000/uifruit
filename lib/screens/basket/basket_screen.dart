import 'package:flutter/material.dart';
import 'package:ui_fruit/screens/basket/components/body_basket.dart';
import 'package:ui_fruit/size_config.dart';

import '../../components/custom_app_bar.dart';

class BasketScreen extends StatelessWidget {
  static String routeName = '/basket';
  const BasketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
            AppBar().preferredSize.height + getProportionateScreenHeight(40)),
        child: AppBar(
          title: Text(
            'My Basket',
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 24,
              fontWeight: FontWeight.normal,
            ),
          ),
          toolbarHeight:
              AppBar().preferredSize.height + getProportionateScreenHeight(40),
          elevation: 0,
          backgroundColor: Color(0xffFFA451),
          leadingWidth: SizeConfig.screenWidth,
          leading: CustomAppBar(
            paddingtop: getProportionateScreenHeight(0),
          ),
        ),
      ),
      body: BodyBasket(),
    );
  }
}
