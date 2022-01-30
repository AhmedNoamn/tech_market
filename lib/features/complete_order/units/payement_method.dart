part of '../view.dart';

class _PayementMethodUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool value = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: kPadding1(0, 10),
          child: Text(
            'Payment Method',
            style: fieldTextStyle(kDarkClr),
          ),
        ),
        Column(
          children: List.generate(
            _paymentItem.length,
            (index) => _CardDetail(
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  value: value,
                  onChanged: (newVal) {},
                ),
                Text(
                  _paymentItem[index],
                  style: fieldTextStyle(kDarkClr),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

List<String> _paymentItem = [
  'Cash',
  'Credit Card',
];
