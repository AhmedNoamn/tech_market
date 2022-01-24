part of '../view.dart';

class _SearchListUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          margin: kPadding1(20, 8),
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
