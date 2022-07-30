import 'package:flutter/material.dart';
import 'package:login_screen/screens/login_screen.dart';
import 'package:login_screen/widgets/form_field.dart';
import 'package:login_screen/widgets/register_button.dart';

import '../widgets/email_field.dart';
import '../widgets/password_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff73aef5),
                    Color(0xff61a4f1),
                    Color(0xff478de0),
                    Color(0xff398ae5),
                  ],
                  stops: [
                    0.1,
                    0.4,
                    0.7,
                    0.9
                  ]),
            ),
          ),
          Container(
            height: size.height,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sign up",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'OpenSans',
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  FormFieldWidget(
                      hintText: "Enter your full name",
                      text: "Full name",
                      icon: Icons.person),
                  const SizedBox(
                    height: 25,
                  ),
                  FormFieldWidget(
                      hintText: "Enter your phone number",
                      text: "Phone number",
                      icon: Icons.phone),
                  const SizedBox(
                    height: 25,
                  ),
                  const EmialField(),
                  const SizedBox(
                    height: 25,
                  ),
                  const PasswordField(),
                  const SizedBox(
                    height: 25,
                  ),
                  FormFieldWidget(
                      hintText: "Confirm your password",
                      text: "Confirm password",
                      icon: Icons.lock),
                  const SizedBox(
                    height: 25,
                  ),
                  const RegisterButton(),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Have an account? ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          TextSpan(
                            text: "Sign in",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
