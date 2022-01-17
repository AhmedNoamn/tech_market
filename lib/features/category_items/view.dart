import 'package:flutter/material.dart';
import 'package:tech_market/constant.dart';
import 'package:tech_market/widgets/product_card.dart';

part 'units/element_unit.dart';

class ListItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: kPadding1(10, 30),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'LapTops',
                style: screenTitleStyle(32),
              ),
            ),
            SizedBox(height: 20),
            Expanded(child: _ElementUnit()),
          ],
        ),
      ),
    );
  }
}
