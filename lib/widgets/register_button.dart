import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(5),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(
            const EdgeInsets.all(10),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
        child: const Text(
          "Register",
          style: TextStyle(
              color: Color(
                0xff527daa,
              ),
              fontSize: 20,
              letterSpacing: 2,
              fontFamily: 'OpenSans'),
        ),
        onPressed: () {
          print("Register button pressed");
        },
      ),
    );
  }
}
