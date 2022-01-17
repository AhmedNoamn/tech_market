part of '../view.dart';

class _ButtonsUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          onTap: () {},
          child: Text(
            'Validate',
            style: fieldTextStyle(kBlueClr),
          ),
        ),
        SizedBox(
          height: heightSize(context, 25),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account ?',
              style: fieldTextStyle(kYellowClr),
            ),
            CustomTextButton(
              ontap: () => MagicRoute.navigateAndReplacement(LoginView()),
              child: Text(
                'Login',
                style: fieldTextStyle(kYellowClr)
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        )
      ],
    );
  }
}
