import 'package:flutter/material.dart';

import '../constant.dart';

class CostRow extends StatelessWidget {
  const CostRow({
    required this.textTitle,
    required this.textPrice,
    required this.color,
  });
  final String textTitle;
  final String textPrice;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            textTitle + ' : ',
            style: fieldTextStyle(kDarkClr),
          ),
          Spacer(),
          Text(
            'USD ' + textPrice,
            style: textStyle16.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
