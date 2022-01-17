part of '../view.dart';

class _RowButtonItemUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 40,
      children: [
        ItemButton(
            onTap: () => MagicRoute.navigateTo(CategoriesView()),
            iconData: FontAwesomeIcons.listUl,
            itemText: 'Categories'),
        ItemButton(
            onTap: () {},
            iconData: FontAwesomeIcons.star,
            itemText: 'Favourites'),
      ],
    );
  }
}

class ItemButton extends StatelessWidget {
  const ItemButton({
    required this.onTap,
    required this.iconData,
    required this.itemText,
  });
  final Function() onTap;
  final IconData iconData;
  final String itemText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kBabyBlueClr,
            ),
            padding: kPadding15,
            child: Icon(
              iconData,
              //FontAwesomeIcons.listUl,
              color: kBlueClr,
            ),
          ),
        ),
        SizedBox(height: 7),
        Text(
          itemText,
          //'Categories',
          style: textStyle14,
        ),
      ],
    );
  }
}
