import 'package:flutter/material.dart';

import '../constant.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    this.leading,
    required this.title,
    this.subTitle,
    this.trailling,
    this.onTap,
    this.color,
    this.borderColor,
  });

  final Widget? leading;
  final Widget title;
  final Widget? subTitle;
  final Widget? trailling;
  final Function()? onTap;
  final Color? color;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPadding10,
      decoration: BoxDecoration(
          borderRadius: circularRadius10,
          color: color ?? kWhiteClr,
          border: Border.all(
            color: borderColor ?? kGreyClr,
          )),
      child: ListTile(
        // ignore: unnecessary_null_in_if_null_operators
        leading: leading ?? null,
        title: title,
        subtitle: subTitle ?? SizedBox(height: 0),
        trailing: trailling ?? SizedBox(height: 0),
        onTap: onTap,
      ),
    );
  }
}
