import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_market/constant.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPadding1(0, 8),
      color: kBabyBlueClr,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomIcon(
            () {},
            FontAwesomeIcons.angleUp,
          ),
          BottomIcon(
            () {},
            FontAwesomeIcons.sistrix,
          ),
          BottomIcon(
            () {},
            FontAwesomeIcons.shoppingCart,
          ),
          BottomIcon(
            () {},
            FontAwesomeIcons.user,
          ),
        ],
      ),
    );
  }
}

class BottomIcon extends StatelessWidget {
  const BottomIcon(
    this.onPressed,
    this.icon,
  );
  final Function() onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 30,
        color: kDarkClr,
      ),
    );
  }
}
