part of '../view.dart';

class _FavouritesListUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Container(
        margin: kPadding1(15, 8),
        child: CustomListTile(
          leading: Image.asset('assets/images/ghm.png'),
          title: Text(
            'Google Home mini',
            style: fieldTextStyle(kDarkClr),
          ),
          subTitle: Text(
            'USD 49',
            style: textStyle14,
          ),
          trailling: CustomTextButton(
            ontap: () {},
            child: Text(
              'Delete',
              style: textStyle14.copyWith(color: Colors.red[600]),
            ),
          ),
        ),
      ),
    );
  }
}
