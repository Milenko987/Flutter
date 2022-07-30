import 'package:flutter/material.dart';

import '../constants.dart';

class RememberMeCheckBox extends StatefulWidget {
  RememberMeCheckBox({
    Key? key,
    required this.rememberMe,
  }) : super(key: key);

  bool rememberMe;

  @override
  State<RememberMeCheckBox> createState() => _RememberMeCheckBoxState();
}

class _RememberMeCheckBoxState extends State<RememberMeCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Theme(
            data: ThemeData(
              unselectedWidgetColor: Colors.white,
            ),
            child: Checkbox(
                checkColor: Colors.green,
                activeColor: Colors.white,
                value: widget.rememberMe,
                onChanged: (val) {
                  setState(() {
                    widget.rememberMe = val!;
                  });
                }),
          ),
          const Text(
            "Remember me",
            style: kLabelStyle,
          )
        ],
      ),
    );
  }
}
