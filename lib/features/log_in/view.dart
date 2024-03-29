import 'package:flutter/material.dart';
import 'package:tech_market/constant.dart';
import 'package:tech_market/core/routes/routes.dart';
import 'package:tech_market/core/validator/validator.dart';
import 'package:tech_market/features/nav_bar/view.dart';
import 'package:tech_market/features/sign_up/view.dart';
import 'package:tech_market/widgets/button.dart';
import 'package:tech_market/widgets/inputfield.dart';
import 'package:tech_market/widgets/password_field.dart';
import 'package:tech_market/widgets/text_button.dart';

part 'units/buttons.dart';
part 'units/fields.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBlueClr,
        padding: kPadding20,
        child: ListView(
          children: [
            SizedBox(height: 60),
            Align(
              alignment: Alignment.center,
              child: Text(
                'LOG IN',
                style: subTitleStyle,
              ),
            ),
            SizedBox(height: heightSize(context, 8)),
            _FieldsUnit(),
            SizedBox(height: 50),
            _ButtonsUnit(),
          ],
        ),
      ),
    );
  }
}
