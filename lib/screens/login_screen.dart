import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_screen/constants.dart';
import 'package:login_screen/screens/signup_screen.dart';
import 'package:login_screen/widgets/password_field.dart';

import '../widgets/email_field.dart';
import '../widgets/forgot_password_button.dart';
import '../widgets/login_button.dart';
import '../widgets/remember_me_checkbox.dart';
import '../widgets/social_network_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Stack(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 90),
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Sign in",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'OpenSans',
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const EmialField(),
                      const SizedBox(
                        height: 25,
                      ),
                      const PasswordField(),
                      const ForgotPasswordButton(),
                      RememberMeCheckBox(rememberMe: rememberMe),
                      const LoginButton(),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: const [
                          Text(
                            "-OR-",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Sign in with",
                            style: kLabelStyle,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SocialNetworkButton(
                                imageUrl: "assets/images/facebook.jpg",
                                LoginWith: () => print("Login with facebook")),
                            SocialNetworkButton(
                              imageUrl: "assets/images/google.jpg",
                              LoginWith: () => print("Login with google"),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                        },
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              TextSpan(
                                text: "Sign up",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
