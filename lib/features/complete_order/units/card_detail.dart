part of '../view.dart';

class _CardDetail extends StatelessWidget {
  const _CardDetail({
    required this.children,
  });
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 170,
        padding: kPadding1(5, 5),
        margin: kPadding1(10, 5),
        decoration: BoxDecoration(
            borderRadius: circularRadius10,
            color: kWhiteClr,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 1,
                offset: Offset(0, 10),
                color: kDarkClr.withOpacity(0.1),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: children,
          ),
        ));
  }
}
