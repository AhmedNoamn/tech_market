part of '../view.dart';

class _DescriptionUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(
            'Description :',
            style: fieldTextStyle(kDarkClr),
          ),
          _TextPadding(
            text: ' Color Red',
            textStyle: fieldTextStyle(kDarkClr),
          ),
          _TextPadding(
            text: ' 6.5 inch',
            textStyle: fieldTextStyle(kDarkClr),
          ),
          _TextPadding(
            text: ' 256 GB',
            textStyle: fieldTextStyle(kDarkClr),
          ),
        ],
      ),
    );
  }
}
