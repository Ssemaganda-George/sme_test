import 'package:flutter/material.dart';
import 'package:charify/components/text_field_container.dart';
import 'package:charify/utils/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        obscureText: true, // Set obscureText to true for password fields
        decoration: InputDecoration(
          icon: Icon(Icons.lock, color: kPrimaryColor),
          suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
          hintText: "Password",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
