part of '../view.dart';

class _TotalAmount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      width: widthSize(context, 1),
      height: heightSize(context, 3.3),
      child: Container(
        padding: kPadding1(20, 0),
        color: kWhiteClr,
        child: ListView(
          children: [
            kDivider,
            CostRow(
              textTitle: 'Total',
              textPrice: '1000',
              color: kBlueClr,
            ),
            CustomButton(
              onTap: () => MagicRoute.navigateAndReplacement(
                CompleteOrderView(),
              ),
              child: Text(
                'Complete Order',
                style: fieldTextStyle(kWhiteClr),
              ),
              buttonColor: kBlueClr,
            ),
          ],
        ),
      ),
    );
  }
}
