import 'package:flutter/material.dart';

import 'package:tech_market/constant.dart';
import 'package:tech_market/core/routes/routes.dart';
import 'package:tech_market/widgets/button.dart';
import 'package:tech_market/widgets/cost_row.dart';
import 'package:tech_market/widgets/inputfield.dart';

part 'cubit.dart';
part 'units/cost_unit.dart';
part 'units/fields.dart';
part 'units/order_validator_dialog.dart';

class PayByCreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _sizedBox = SizedBox(height: 10);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: ListView(
        padding: kPadding15,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Pay Via Credit Card',
              style: screenTitleStyle(24),
            ),
          ),
          _sizedBox,
          _FieldsUnit(),
          _sizedBox,
          _CostUnit(),
        ],
      ),
    );
  }
}
