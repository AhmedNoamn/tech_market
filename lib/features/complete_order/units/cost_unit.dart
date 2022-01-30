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
          onTap: () => MagicRoute.navigateTo(PayByCreditCard()),
          child: Text(
            'Complete Order',
            style: fieldTextStyle(kWhiteClr),
          ),
          buttonColor: kBlueClr,
        ),
      ],
    );
  }
}
