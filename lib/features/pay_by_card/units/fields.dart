part of '../view.dart';

class _FieldsUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
          titleText: 'Card Number',
          hint: 'xxx-xxx-xxxx-xxxx',
          inputAction: TextInputAction.next,
          hintStyle: textStyle16.copyWith(color: kGreyClr),
          titleColor: kDarkClr,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomInputField(
              titleText: 'Expire Date',
              hint: 'mm / yy',
              inputAction: TextInputAction.next,
              hintStyle: textStyle16.copyWith(color: kGreyClr),
              width: widthSize(context, 2.4),
              titleColor: kDarkClr,
            ),
            CustomInputField(
              titleText: 'CVV',
              hint: 'xxx',
              inputAction: TextInputAction.next,
              hintStyle: textStyle16.copyWith(color: kGreyClr),
              width: widthSize(context, 2.4),
              titleColor: kDarkClr,
            ),
          ],
        )
      ],
    );
  }
}
