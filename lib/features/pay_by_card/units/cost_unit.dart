part of '../view.dart';

class _CostUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int cost = 1000;
    int taxes = 100;
    int discount = 0;
    int total = (cost + taxes) - discount;
    return Column(
      children: [
        kDivider,
        CostRow(
          textTitle: 'Cost',
          textPrice: cost.toString(),
          color: kBlueClr,
        ),
        CostRow(
          textTitle: 'Taxes',
          textPrice: taxes.toString(),
          color: kBlueClr,
        ),
        CostRow(
          textTitle: 'Discount',
          textPrice: discount.toString(),
          color: kRedClr,
        ),
        kDivider,
        CostRow(
          textTitle: 'Total',
          textPrice: total.toString(),
          color: kBlueClr,
        ),
        CustomButton(
          onTap: _showValidatorDialog,
          child: Text(
            'Pay',
            style: fieldTextStyle(kWhiteClr),
          ),
          buttonColor: kBlueClr,
        ),
        Text(
          'By placing this order you agre \nto the Credit Card payment terms & conditions.',
          style: textStyle16.copyWith(color: kDarkClr),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
