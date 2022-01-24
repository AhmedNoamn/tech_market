part of '../view.dart';

class _FieldsUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
          titleText: 'Full name',
          hint: 'full name',
          obscureText: false,
          validator: Validator.validName,
          inputAction: TextInputAction.next,
        ),
        CustomInputField(
          titleText: 'Email',
          hint: 'email',
          obscureText: false,
          validator: Validator.validEmail,
          inputAction: TextInputAction.next,
        ),
        PasswordField(),
      ],
    );
  }
}
