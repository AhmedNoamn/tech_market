part of '../view.dart';

class _ImageUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      //width: widthSize(context, 1),
      height: heightSize(context, 1.7),
    );
  }
}
