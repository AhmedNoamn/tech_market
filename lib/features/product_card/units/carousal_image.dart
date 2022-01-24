part of '../view.dart';

class _CarousalImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _disCount = 20;
    int _oldPrice = 200;
    int _totalPrice = _oldPrice - _disCount;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'iPhone 11 Pro',
            style: screenTitleStyle(24),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: _TextPadding(
            text: _disCount.toString() + ' \$ off',
            textStyle: textStyle14,
            textColor: kBabyBlueClr,
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.999,
            aspectRatio: 20 / 10,
          ),
          items: List.generate(
            4,
            (index) => Image.asset('assets/images/iphone.png'),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Old Price: ' + _oldPrice.toString() + ' USD',
          style: screenTitleStyle(18).copyWith(color: kGreyClr),
        ),
        SizedBox(height: 10),
        Text(
          'Total Price:' + _totalPrice.toString() + ' USD',
          style: screenTitleStyle(18),
        ),
      ],
    );
  }
}
