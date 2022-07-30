import 'package:flutter/material.dart';

import '../constants.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 0),
      child: TextButton(
        onPressed: () {
          print("Forgot password button pressed");
        },
        child: const Text(
          "Forgot password?",
          style: kLabelStyle,
        ),
      ),
    );
  }
}
