import 'package:flutter/material.dart';

import '../constants.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Password",
          style: kLabelStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 40,
          child: const TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white, fontSize: 16),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 8),
              hintText: "Enter your password",
              hintStyle: kHintTextStyle,
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.lock,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
