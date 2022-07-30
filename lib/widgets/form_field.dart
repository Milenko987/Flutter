import 'package:flutter/material.dart';
import 'package:login_screen/constants.dart';

class FormFieldWidget extends StatelessWidget {
  final String text;
  final String hintText;
  final IconData icon;
  FormFieldWidget(
      {required this.hintText, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: kLabelStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 40,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(color: Colors.white, fontSize: 16),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 8),
              hintText: hintText,
              hintStyle: kHintTextStyle,
              border: InputBorder.none,
              prefixIcon: Icon(
                icon,
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
