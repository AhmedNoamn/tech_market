part of '../view.dart';

class _ListCategoryUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categoryItem.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => MagicRoute.navigateTo(CategoryDetailsView()),
        child: Card(
          elevation: 2,
          shadowColor: kDarkBlueClr,
          shape: RoundedRectangleBorder(
            borderRadius: circularRadius10,
          ),
          margin: kPadding10,
          child: Center(
            heightFactor: 3.1,
            child: Text(
              categoryItem[index],
              style: screenTitleStyle(18),
            ),
          ),
        ),
      ),
    );
  }
}

List<String> categoryItem = [
  'All',
  'Computers',
  'Accessories',
  'Smart objects',
  'Smartphones',
  'Speakers',
];
