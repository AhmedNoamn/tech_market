import 'package:flutter/material.dart';
import 'package:tech_market/constant.dart';
import 'package:tech_market/core/routes/routes.dart';
import 'package:tech_market/features/category_detail/view.dart';

part 'units/list_category.dart';

class CategoriesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: kPadding10,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Categories',
                style: screenTitleStyle(32),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: _ListCategoryUnit(),
            ),
          ],
        ),
      ),
    );
  }
}
