part of '../view.dart';

class _FieldsUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
          titleText: 'Email',
          hint: 'email',
          validator: Validator.validEmail,
          inputAction: TextInputAction.next,
        ),
        SizedBox(
          height: heightSize(context, 30),
        ),
        PasswordField(),
      ],
    );
  }
}
