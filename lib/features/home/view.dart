import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:tech_market/constant.dart';
import 'package:tech_market/core/routes/routes.dart';
import 'package:tech_market/features/categories/view.dart';
import 'package:tech_market/features/favourites/view.dart';
import 'package:tech_market/features/product_card/view.dart';
import 'package:tech_market/widgets/list_tile.dart';
import 'package:tech_market/widgets/product_card.dart';

part 'units/app_bar.dart';
part 'units/carousal_unit.dart';
part 'units/item_button.dart';
part 'units/show_item.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizebox = SizedBox(height: 20);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            title: _AppBarUnit(),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
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
              SizedBox(
                height: heightSize(context, 1),
                child: _ShowItemUnit(),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}



/*
 appBar: PreferredSize(
        child: _AppBarUnit(),
        preferredSize: Size.fromHeight(60),
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
*/