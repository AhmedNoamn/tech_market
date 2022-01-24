part of '../view.dart';

class _ButtonUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
            onTap: () => MagicRoute.navigateAndReplacement(SplashView()),
            child: Text(
              'Let\'s Started',
              style: fieldTextStyle(kBlueClr),
            )),
        CustomTextButton(
            ontap: () {
              MagicRoute.navigateAndPopAll(LoginView());
            },
            child: Text(
              'Skip for now',
              style: fieldTextStyle(kWhiteClr),
            )),
      ],
    );
  }
}
