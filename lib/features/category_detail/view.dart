import 'package:flutter/material.dart';
import 'package:tech_market/constant.dart';
import 'package:tech_market/widgets/product_card.dart';

part 'units/element_unit.dart';
part 'units/page_title.dart';

class CategoryDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: kPadding1(10, 20),
        child: Column(
          children: [
            _PageTitle(),
            SizedBox(height: 20),
            Expanded(child: _ElementUnit()),
          ],
        ),
      ),
    );
  }
}
