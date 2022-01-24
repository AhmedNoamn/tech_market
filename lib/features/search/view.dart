import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_market/constant.dart';
import 'package:tech_market/core/validator/validator.dart';
import 'package:tech_market/widgets/list_tile.dart';
import 'package:tech_market/widgets/search_field.dart';

part 'units/app_bar.dart';
part 'units/search_field_unit.dart';
part 'units/search_list_unit.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: _AppBarUnit(),
        preferredSize: Size.fromHeight(60),
      ),
      body: Column(
        children: [
          _SearchFieldUnit(),
          SizedBox(height: 20),
          Expanded(child: _SearchListUnit()),
        ],
      ),
    );
  }
}
