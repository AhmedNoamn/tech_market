part of '../view.dart';

class _PageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'LapTops',
          style: screenTitleStyle(32),
        ),
        Spacer(),
        Image.asset('assets/images/rectangle.png'),
      ],
    );
  }
}
