part of '../view.dart';

class _AddressUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool value = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: kPadding1(0, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Address',
                style: fieldTextStyle(kDarkClr),
              ),
              Text(
                'Add Address',
                style: textStyle12,
              ),
            ],
          ),
        ),
        Column(
          children: List.generate(
            _addressItem.length,
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
                  _addressItem[index],
                  style: fieldTextStyle(kDarkClr),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.edit,
                      color: kDarkBlueClr,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.trashAlt,
                      color: kRedClr,
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}

List<String> _addressItem = [
  'Work',
  'Home',
  'Cafe',
];
