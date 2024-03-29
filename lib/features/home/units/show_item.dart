part of '../view.dart';

class _ShowItemUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightSize(context, 1),
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.77,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => ProductCard(
            onTap: () {
              MagicRoute.navigateTo(ProductCardView());
            },
            imageAddress: 'assets/images/monitor.png',
            elementText: 'Monitor',
            priceText: 'USD 999'),
      ),
    );
  }
}










// SizedBox(
//       height: heightSize(context, 2.6),
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: 5,
//           itemBuilder: (context, index) => ProductCard(
//               onTap: () {},
//               imageAddress: 'assets/images/monitor.png',
//               elementText: 'Monitor',
//               priceText: 'USD 999')),
//     )