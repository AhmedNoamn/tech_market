part of '../view.dart';

class _AppBarUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kWhiteClr,
      title: Text(
        'Search',
        style: screenTitleStyle(32),
      ),
    );
  }
}
