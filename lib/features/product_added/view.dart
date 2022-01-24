import 'package:flutter/material.dart';
import 'package:tech_market/constant.dart';
import 'package:tech_market/core/routes/routes.dart';
import 'package:tech_market/features/home/view.dart';
import 'package:tech_market/widgets/button.dart';

part 'units/button_unit.dart';
part 'units/image_unit.dart';

class ProductAdded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _ImageUnit(),
            _BUttonsUnit(),
          ],
        ),
      ),
    );
  }
}
