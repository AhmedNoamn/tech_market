part of '../view.dart';

class _CarousalUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 0.999,
          aspectRatio: 20 / 5,
        ),
        items: List.generate(
          4,
          (index) => CustomListTile(
            title: Text(
              'Macbook ',
              style: fieldTextStyle(kWhiteClr),
            ),
            subTitle: Text(
              'USD 279 ',
              style: textStyle12,
            ),
            trailling: Image.asset(
              'assets/images/macbook.png',
              height: 100,
            ),
            color: kBlueClr,
          ),
        ));
  }
}
