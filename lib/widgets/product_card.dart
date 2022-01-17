import 'package:flutter/material.dart';

import '../constant.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.onTap,
    required this.imageAddress,
    required this.elementText,
    required this.priceText,
  });
  final Function() onTap;
  final String imageAddress;
  final String elementText;
  final String priceText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: kPadding10,
        elevation: 2,
        shadowColor: kDarkBlueClr,
        shape: RoundedRectangleBorder(
          borderRadius: circularRadius10,
        ),
        child: Container(
          margin: kPadding20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //     children: [
              //       Text(
              //         'new',
              //         style: textStyle12.copyWith(color: kBlueClr),
              //       ),
              //       Spacer(),
              //       Icon(Icons.cancel_outlined),
              //     ],
              //   ),
              //   SizedBox(height: 10),
              Image.asset(
                imageAddress,
                height: 120,
              ),
              SizedBox(height: 10),
              Text(
                elementText,
                style: textStyle16.copyWith(color: kDarkClr),
              ),
              Text(
                priceText,
                style: textStyle12.copyWith(color: kBlueClr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
