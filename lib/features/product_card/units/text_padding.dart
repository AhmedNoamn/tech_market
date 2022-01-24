part of '../view.dart';

class _TextPadding extends StatelessWidget {
  const _TextPadding({
    required this.text,
    required this.textStyle,
    this.textColor,
  });
  final String text;
  final TextStyle textStyle;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: textColor ?? kWhiteClr,
      margin: kPadding1(20, 8),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
