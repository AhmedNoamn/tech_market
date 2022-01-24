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
      child: Container(
        // height: 170,
        padding: kPadding20,
        margin: kPadding10,
        decoration: BoxDecoration(
            borderRadius: circularRadius10,
            color: kWhiteClr,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(0, 10),
                color: kDarkClr.withOpacity(0.5),
              )
            ]),
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
              height: 110,
            ),
            SizedBox(height: 15),
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
    );
  }
}
