import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:tech_market/constant.dart';
import 'package:tech_market/core/routes/routes.dart';
import 'package:tech_market/features/product_added/view.dart';
import 'package:tech_market/widgets/button.dart';

part 'units/button_unit.dart';
part 'units/carousal_image.dart';
part 'units/description.dart';
part 'units/text_padding.dart';

class ProductCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizeBox = SizedBox(height: 20);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: ListView(
        padding: kPadding10,
        children: [
          _CarousalImage(),
          sizeBox,
          _DescriptionUnit(),
          sizeBox,
          _ButtonUnit(),
        ],
      ),
    );
  }
}
