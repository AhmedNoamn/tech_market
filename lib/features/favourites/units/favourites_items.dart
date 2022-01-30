part of '../view.dart';

class _FavouritesListUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String item = '';
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Dismissible(
        key: Key(item),
        background: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Delete    ',
            style: fieldTextStyle(kRedClr),
          ),
        ),
        child: Container(
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
          ),
        ),
      ),
    );
  }
}
