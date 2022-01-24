part of '../view.dart';

class _ImageUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/basket.png'),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
