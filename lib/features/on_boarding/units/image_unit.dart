part of '../view.dart';

class _ImageUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      height: heightSize(context, 1.6),
    );
  }
}
