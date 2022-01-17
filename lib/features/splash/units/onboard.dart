part of '../view.dart';

class OnBoardunits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoard(
        pageController: NextButtonUnit.pageController,
        onSkip: () {},
        onDone: () {},
        imageWidth: widthSize(context, 1.1),
        imageHeight: heightSize(context, 8),
        onBoardData: onBoardData,
        titleStyles: subTitleStyle,
        descriptionStyles: textStyle12,
        pageIndicatorStyle: const PageIndicatorStyle(
          width: 100,
          inactiveColor: kGreyClr,
          activeColor: kWhiteClr,
          inactiveSize: Size(6, 6),
          activeSize: Size(10, 10),
        ),
        skipButton: TextButton(
          onPressed: () {},
          child: const Text(
            "Skip",
            style: TextStyle(color: kBlueClr),
          ),
        ),
        nextButton: NextButtonUnit());
  }
}
