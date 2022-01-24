import 'package:flutter/material.dart';
import 'package:tech_market/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onTap,
    required this.child,
    this.buttonColor,
    this.height,
    this.width,
  });
  final Function() onTap;
  final Widget child;
  final Color? buttonColor;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? heightSize(context, 10),
        width: width ?? widthSize(context, 1.2),
        padding: kPadding1(30, 5),
        margin: kPadding10,
        decoration: BoxDecoration(
          borderRadius: circularRadius(6),
          color: buttonColor ?? kWhiteClr,
        ),
        child: Center(child: child),
      ),
    );
  }
}
