import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_market/constant.dart';
import 'package:tech_market/core/routes/routes.dart';
import 'package:tech_market/features/pay_by_card/view.dart';
import 'package:tech_market/widgets/button.dart';
import 'package:tech_market/widgets/cost_row.dart';

part 'units/payement_method.dart';
part 'units/card_detail.dart';
part 'units/address_detail.dart';
part 'units/cost_unit.dart';
part 'cubit.dart';

class CompleteOrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizedBox = SizedBox(height: 10);
    return Scaffold(
      body: ListView(
        padding: kPadding15,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Complete Order',
              style: screenTitleStyle(32),
            ),
          ),
          sizedBox,
          _PayementMethodUnit(),
          sizedBox,
          _AddressUnit(),
          _CostUnit(),
        ],
      ),
    );
  }
}
