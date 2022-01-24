part of '../view.dart';

class _ElementUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.77,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => ProductCard(
          onTap: () {},
          imageAddress: 'assets/images/macbook.png',
          elementText: 'Macbook',
          priceText: 'USD 999',
        ),
      ),
    );
  }
}
