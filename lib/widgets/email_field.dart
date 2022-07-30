import 'package:flutter/material.dart';

import '../constants.dart';

class EmialField extends StatelessWidget {
  const EmialField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Email",
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
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white, fontSize: 16),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 8),
              hintText: "Enter your email",
              hintStyle: kHintTextStyle,
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.email,
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
