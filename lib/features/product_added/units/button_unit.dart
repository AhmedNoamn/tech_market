part of '../view.dart';

class _BUttonsUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onTap: () => MagicRoute.pop(),
          child: Text(
            'Go To Cart',
            style: fieldTextStyle(kBlueClr),
          ),
          buttonColor: kBabyBlueClr,
        ),
        CustomButton(
          onTap: () => MagicRoute.navigateAndPopAll(HomeView()),
          child: Text(
            'Back to shopping',
            style: fieldTextStyle(kWhiteClr),
          ),
          buttonColor: kBlueClr,
        )
      ],
    );
  }
}
