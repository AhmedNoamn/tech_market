part of '../view.dart';

class _ButtonsUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          onTap: () {
            MagicRoute.navigateAndPopAll(NavBarView());
          },
          child: Text(
            'Validate',
            style: fieldTextStyle(kBlueClr),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account ?',
              style: fieldTextStyle(kYellowClr),
            ),
            CustomTextButton(
              ontap: () => MagicRoute.navigateAndReplacement(RegisterView()),
              child: Text(
                'Sign-up',
                style: fieldTextStyle(kYellowClr)
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ],
    );
  }
}
