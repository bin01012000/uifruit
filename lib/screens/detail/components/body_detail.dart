import 'package:flutter/material.dart';
import 'package:ui_fruit/components/welcome_image.dart';
import 'package:ui_fruit/size_config.dart';
import '../../../components/rounded_icon.dart';
import '../../../components/small_button.dart';
import 'description.dart';
import 'name_price.dart';

class BodyDetail extends StatelessWidget {
  const BodyDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget>[
          WelcomeImage(
            img: "assets/images/addtobasket.png",
            height: getProportionateScreenHeight(314),
            shadow: false,
          ),
          Container(
            color: Color(0xffFFA451),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NamePrice(
                    name: "Quinoa Fruit Salad",
                    qty: 1,
                    price: 2000,
                  ),
                  SizedBox(height: getProportionateScreenWidth(32)),
                  Divider(
                      color: Color.fromRGBO(243, 243, 243, 1), thickness: 1),
                  SizedBox(height: getProportionateScreenWidth(32)),
                  Description(
                    title: 'One Pack Contains:',
                    desc:
                        'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                  ),
                  SizedBox(height: getProportionateScreenWidth(20)),
                  Divider(
                      color: Color.fromRGBO(243, 243, 243, 1), thickness: 1),
                  SizedBox(height: getProportionateScreenWidth(24)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(24)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(39)),
                        Row(
                          children: <Widget>[
                            RoundedIcon(
                              width: 48,
                              height: 38,
                              icon: "assets/icons/heart.svg",
                              asset: true,
                              widthicon: 24,
                              heighticon: 21.47,
                            ),
                            Spacer(),
                            SmallButton(
                              text: 'Add to basket',
                              press: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
