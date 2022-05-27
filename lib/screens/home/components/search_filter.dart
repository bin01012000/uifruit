import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_fruit/size_config.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(288),
            child: TextFormField(
              decoration: inputDecorationTheme(),
            ),
          ),
          Image.asset('assets/images/filter.png'),
        ],
      ),
    );
  }
}

InputDecoration inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: Colors.transparent),
  );
  return InputDecoration(
    prefixIcon: Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(24),
          right: getProportionateScreenWidth(16)),
      child: SvgPicture.asset("assets/icons/search.svg"),
    ),
    hintText: 'Search for fruit salad combos',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
    hintStyle: const TextStyle(
        fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xff86869e)),
    filled: true,
    fillColor: const Color(0xffF3F4F9),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
  );
}
