part of '../view.dart';

class _TextUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 100),
        Text(
          'LA TECH',
          style: headTitleStyle,
        ),
        Text(
          'TECH MARKET',
          style: textStyle12.copyWith(letterSpacing: 10),
        )
      ],
    );
  }
}
