import 'package:flutter/material.dart';
import 'package:tech_market/constant.dart';
import 'package:tech_market/core/routes/routes.dart';
import 'package:tech_market/core/validator/validator.dart';
import 'package:tech_market/features/log_in/view.dart';
import 'package:tech_market/widgets/button.dart';
import 'package:tech_market/widgets/inputfield.dart';
import 'package:tech_market/widgets/password_field.dart';
import 'package:tech_market/widgets/text_button.dart';

part 'units/buttons.dart';
part 'units/fields.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: kPadding1(40, 10),
        color: kBlueClr,
        child: ListView(
          children: [
            SizedBox(height: heightSize(context, 20)),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Create an account',
                style: subTitleStyle,
              ),
            ),
            SizedBox(height: heightSize(context, 8)),
            _FieldsUnit(),
            SizedBox(height: heightSize(context, 30)),
            _ButtonsUnit(),
          ],
        ),
      ),
    );
  }
}
