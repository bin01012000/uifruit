import 'package:flutter/material.dart';

import '../../../size_config.dart';

class AllTitleActive extends StatefulWidget {
  const AllTitleActive({
    Key? key,
  }) : super(key: key);

  @override
  State<AllTitleActive> createState() => _AllTitleActiveState();
}

class _AllTitleActiveState extends State<AllTitleActive> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    List<String> data = ["Hottest", "Popular", "New combo", "Top"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ...List.generate(
          data.length,
          (index) => buildTitle(
            index,
            data[index],
          ),
        ),
      ],
    );
  }

  GestureDetector buildTitle(int index, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = index;
        });
      },
      child: Stack(
        children: [
          Text(
            title,
            style: TextStyle(
                color: selected == index
                    ? const Color(0xff27214d)
                    : const Color(0xff938DB5),
                fontWeight: FontWeight.w500,
                fontSize: selected == index
                    ? getProportionateScreenWidth(24)
                    : getProportionateScreenWidth(16)),
          ),
          if (selected == index)
            Positioned(
              width: getProportionateScreenWidth(22),
              bottom: 0,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xffffa451),
                      width: 2,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
