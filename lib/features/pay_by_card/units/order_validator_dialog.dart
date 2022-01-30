part of '../view.dart';

_showValidatorDialog() {
  return showDialog(
      context: MagicRoute.currentContext,
      builder: (context) => _ValidatorDialog());
}

class _ValidatorDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: kPadding1(0, 0),
      backgroundColor: kBlueClr.withOpacity(0.5),
      elevation: 4,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 180,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kWhiteClr,
              ),
              child: Image.asset('assets/images/checkicon.png'),
            ),
            Text(
              'Order validate!',
              style: subTitleStyle,
            ),
          ],
        ),
      ),
    );
  }
}
