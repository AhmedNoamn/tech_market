part of '../view.dart';

class _SearchFieldUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchField(
      leading: Icon(FontAwesomeIcons.sistrix, color: kBlueClr),
      hintText: 'What are you looking for ?',
      validator: Validator.validName,
    );
  }
}
