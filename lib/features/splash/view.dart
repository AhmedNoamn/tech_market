import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:tech_market/core/routes/routes.dart';
import 'package:tech_market/features/sign_up/view.dart';

import '../../constant.dart';

part 'units/next_button.dart';
part 'units/onboard.dart';
part 'units/photo.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBlueClr,
        child: OnBoardunits(),
      ),
    );
  }
}
