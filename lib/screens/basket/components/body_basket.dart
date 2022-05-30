import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_fruit/components/small_button.dart';
import 'package:ui_fruit/size_config.dart';

class BodyBasket extends StatelessWidget {
  const BodyBasket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(32)),
      child: Column(
        children: <Widget>[
          CartCard(
            name: "Quinoa fruit salad",
            price: 20000,
            cate: "2packs",
            color: Color(0xffFFFAEB),
            image: "assets/images/basket1.png",
          ),
          SizedBox(height: getProportionateScreenHeight(16)),
          Divider(color: Color.fromRGBO(244, 244, 244, 1), thickness: 1),
          SizedBox(height: getProportionateScreenHeight(32)),
          CartCard(
            name: "Melon fruit salad",
            price: 20000,
            cate: "2packs",
            color: Color(0xffF1EFF6),
            image: "assets/images/basket2.png",
          ),
          SizedBox(height: getProportionateScreenHeight(16)),
          Divider(color: Color.fromRGBO(244, 244, 244, 1), thickness: 1),
          SizedBox(height: getProportionateScreenHeight(32)),
          CartCard(
            name: "Tropical fruit salad",
            price: 20000,
            cate: "2packs",
            color: Color(0xffFEF0F0),
            image: "assets/images/basket3.png",
          ),
          Spacer(),
          BottomCheckout()
        ],
      ),
    );
  }
}

class BottomCheckout extends StatelessWidget {
  const BottomCheckout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Total",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/dollar.svg",
                    width: 20,
                    height: 16,
                    color: Colors.black,
                  ),
                  Text(
                    " 60,000",
                    style: TextStyle(
                      color: Color.fromRGBO(39, 33, 77, 1),
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          SmallButton(
            text: "Checkout",
            press: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 406,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(24),
                          vertical: getProportionateScreenHeight(40)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Delivery address",
                            style: TextStyle(
                              color: Color.fromRGBO(39, 33, 77, 1),
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(16)),
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: '10th avenue, Lekki, Lagos State'),
                          ),
                          SizedBox(height: getProportionateScreenHeight(24)),
                          Text(
                            "Number we can call",
                            style: TextStyle(
                              color: Color.fromRGBO(39, 33, 77, 1),
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(16)),
                          TextFormField(
                            decoration:
                                const InputDecoration(hintText: '0348098023'),
                          ),
                          Spacer(),
                          Row(
                            children: <Widget>[
                              ButtonBasket(
                                text: "Pay on delivery",
                                press: () {},
                              ),
                              Spacer(),
                              ButtonBasket(
                                text: "Pay with card",
                                press: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class ButtonBasket extends StatelessWidget {
  const ButtonBasket({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Color.fromRGBO(255, 164, 81, 1),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(getProportionateScreenWidth(16)),
            primary: Colors.white,
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          onPressed: press,
          child: Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(255, 164, 81, 1),
                fontSize: 16,
              )),
        ),
      ],
    );
  }
}

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.name,
    required this.cate,
    required this.price,
    required this.image,
    required this.color,
  }) : super(key: key);

  final String name, cate, image;
  final double price;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
      child: Row(
        children: <Widget>[
          Container(
            width: getProportionateScreenWidth(65),
            height: getProportionateScreenWidth(65),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(image),
          ),
          SizedBox(width: getProportionateScreenWidth(16)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                cate,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: <Widget>[
              SvgPicture.asset(
                "assets/icons/dollar.svg",
                color: Colors.black,
              ),
              Text(
                " $price",
                style: TextStyle(
                    color: Color.fromRGBO(39, 33, 77, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ],
          )
        ],
      ),
    );
  }
}
