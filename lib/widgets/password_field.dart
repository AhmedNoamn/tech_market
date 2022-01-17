import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:tech_market/core/validator/validator.dart';
import '../constant.dart';
import 'inputfield.dart';

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isHide = false;
  void hidePassword() {
    setState(() => isHide = !isHide);
  }

  @override
  Widget build(BuildContext context) {
    return CustomInputField(
      titleText: 'Password',
      hint: 'Password',
      trailling: IconButton(
        onPressed: hidePassword,
        icon: isHide
            ? Icon(
                FontAwesomeIcons.eyeSlash,
                color: kDarkBlueClr,
              )
            : Icon(
                FontAwesomeIcons.eye,
                color: kWhiteClr,
              ),
      ),
      obscureText: isHide,
      validator: Validator.validPassword,
      onSaved: (s) {},
      inputAction: TextInputAction.next,
    );
  }
}
