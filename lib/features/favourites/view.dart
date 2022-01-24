import 'package:flutter/material.dart';
import 'package:tech_market/constant.dart';
import 'package:tech_market/widgets/list_tile.dart';
import 'package:tech_market/widgets/text_button.dart';

part 'units/favourites_items.dart';

class FavouritesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '   Favourite',
                style: screenTitleStyle(32),
              ),
            ),
            SizedBox(
              height: heightSize(context, 1),
              child: _FavouritesListUnit(),
            ),
          ])),
        ],
      ),
    );
  }
}


/*
  appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: kPadding15,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Favourite',
                style: screenTitleStyle(32),
              ),
            ),
            Expanded(child: _SearchListUnit()),
          ],
        ),
      ),
*/