import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoundedIcon extends StatelessWidget {
  const RoundedIcon(
      {Key? key,
      this.asset = false,
      this.width = 32,
      this.height = 32,
      this.icon = "assets/icons/add.svg",
      this.icons = Icons.add,
      this.widthicon = 16,
      this.bgColor = const Color(0xffFFF2E7),
      this.iconColor = const Color(0xffFFA451),
      this.borderColor = Colors.transparent,
      this.heighticon = 16})
      : super(key: key);

  final double width, height, widthicon, heighticon;
  final String icon;
  final IconData icons;
  final bool asset;
  final Color bgColor, iconColor, borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(color: borderColor),
          shape: BoxShape.circle),
      child: asset == true
          ? SvgPicture.asset(icon,
              color: iconColor,
              width: widthicon,
              height: heighticon,
              fit: BoxFit.scaleDown)
          : Icon(
              icons,
              color: iconColor,
            ),
    );
  }
}
