import 'package:flutter/material.dart';
import 'package:ui_fruit/screens/basket/basket_screen.dart';
import 'package:ui_fruit/size_config.dart';
import 'package:ui_fruit/screens/home/components/body_home.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: const BodyHome(),
    );
  }

  PreferredSize buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(AppBar().preferredSize.height),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(24),
            right: getProportionateScreenWidth(24),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                "assets/images/menu.png",
                fit: BoxFit.cover,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, BasketScreen.routeName);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/basket.png",
                      fit: BoxFit.cover,
                      width: getProportionateScreenWidth(24),
                      height: getProportionateScreenWidth(24),
                    ),
                    const Text(
                      "My Basket",
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xff27214d),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
