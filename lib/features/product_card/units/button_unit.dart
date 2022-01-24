part of '../view.dart';

class _ButtonUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          width: widthSize(context, 1.48),
          onTap: () => MagicRoute.navigateTo(
            ProductAdded(),
          ),
          child: Text(
            'Add to cart',
            style: fieldTextStyle(kWhiteClr),
          ),
          buttonColor: kBlueClr,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: kBabyBlueClr,
              borderRadius: circularRadius10,
            ),
            padding: kPadding20,
            child: Icon(
              FontAwesomeIcons.star,
              color: kBlueClr,
            ),
          ),
        ),
      ],
    );
  }
}
