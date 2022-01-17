import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_market/constant.dart';
import 'package:tech_market/core/routes/routes.dart';
import 'package:tech_market/features/categories/view.dart';
import 'package:tech_market/widgets/bottom_nav_bar.dart';
import 'package:tech_market/widgets/list_tile.dart';
import 'package:tech_market/widgets/product_card.dart';

part 'units/item_button.dart';
part 'units/carousal_unit.dart';
part 'units/show_item.dart';
part 'units/app_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizebox = SizedBox(height: 25);
    return Scaffold(
      appBar: PreferredSize(
        child: _AppBarUnit(),
        preferredSize: Size.fromHeight(50),
      ),
      body: ListView(
        padding: kPadding10,
        children: [
          _CarousalUnit(),
          sizebox,
          _RowButtonItemUnit(),
          sizebox,
          Center(
            child: Text('SALES',
                style: subTitleStyle.copyWith(
                  color: kDarkClr,
                )),
          ),
          sizebox,
          _ShowItemUnit(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
