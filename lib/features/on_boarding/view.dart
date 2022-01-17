import 'package:flutter/material.dart';

import 'package:tech_market/constant.dart';
import 'package:tech_market/core/routes/routes.dart';
import 'package:tech_market/features/splash/view.dart';
import 'package:tech_market/widgets/button.dart';
import 'package:tech_market/widgets/text_button.dart';

part 'units/button_unit.dart';
part 'units/image_unit.dart';
part 'units/text_unit.dart';

class OnBoardingView extends StatefulWidget {
  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBlueClr,
        width: double.infinity,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _TextUnit(),
            _ImageUnit(),
            _ButtonUnit(),
          ],
        ),
      ),
    );
  }
}
