import 'package:flutter/material.dart';

import '../constant.dart';

// ignore: must_be_immutable
class CustomInputField extends StatelessWidget {
  CustomInputField({
    required this.titleText,
    required this.hint,
    required this.obscureText,
    this.trailling,
    this.onSaved,
    this.validator,
    this.fieldColor,
    this.inputAction,
  });
  bool obscureText;
  final String titleText;
  final String hint;
  final Widget? trailling;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final Color? fieldColor;
  final TextInputAction? inputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kPadding1(20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleText,
            style: fieldTextStyle(kWhiteClr),
          ),
          Container(
            padding: kPadding1(20, 3),
            margin: kPadding1(0, 10),
            decoration: BoxDecoration(
              border: Border.all(color: kWhiteClr),
              borderRadius: circularRadius10,
              color: fieldColor ?? Colors.transparent,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextFormField(
                    textInputAction: inputAction ?? TextInputAction.next,
                    onSaved: onSaved,
                    validator: validator,
                    style: textStyle16,
                    cursorColor: kGreyClr,
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      hintText: hint,
                      hintStyle: textStyle16,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                      disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                    ),
                  ),
                ),
                trailling ?? Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
