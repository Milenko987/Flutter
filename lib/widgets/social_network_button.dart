import 'package:flutter/material.dart';

class SocialNetworkButton extends StatelessWidget {
  final String imageUrl;
  final Function LoginWith;

  // ignore: non_constant_identifier_names
  SocialNetworkButton({required this.imageUrl, required this.LoginWith});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => LoginWith(),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 2), blurRadius: 6, color: Colors.black26),
            ],
            image: DecorationImage(image: AssetImage(imageUrl))),
      ),
    );
  }
}
