import 'package:flutter/material.dart';
import 'package:tech_market/constant.dart';
import 'package:tech_market/core/routes/routes.dart';
import 'package:tech_market/features/complete_order/view.dart';
import 'package:tech_market/widgets/button.dart';
import 'package:tech_market/widgets/cost_row.dart';

part 'cubit.dart';
part 'units/shopping_cart.dart';
part 'units/total_amount.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopping Cart',
          style: screenTitleStyle(32),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          _ShoppingCart(),
          _TotalAmount(),
        ],
      ),
    );
  }
}
