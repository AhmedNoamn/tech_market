import 'package:flutter/material.dart';

import 'package:tech_market/constant.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    required this.leading,
    required this.hintText,
    this.validator,
    this.onSaved,
  });
  final Widget leading;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPadding1(20, 3),
      margin: kPadding10,
      decoration: BoxDecoration(
        border: Border.all(color: kWhiteClr),
        borderRadius: circularRadius(35),
        color: kBabyBlueClr,
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: leading,
              ),
              Expanded(
                child: TextFormField(
                  onSaved: onSaved,
                  validator: validator,
                  style: textStyle16.copyWith(color: kBlueClr),
                  cursorColor: kDarkBlueClr,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: textStyle16.copyWith(color: kBlueClr),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.transparent,
                    )),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.transparent,
                    )),
                    disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.transparent,
                    )),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 50,
            top: 5,
            width: 3,
            height: 35,
            child: Container(
              color: kGreyClr,
            ),
          )
        ],
      ),
    );
  }
}
