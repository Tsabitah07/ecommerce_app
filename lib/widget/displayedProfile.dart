import 'package:flutter/material.dart';

import '../themes/theme.dart';

class DisplayedProfile extends StatelessWidget {
  final String email;
  final String username;
  final String phoneNumber;
  final String password;
  final String image;

  DisplayedProfile({
    required this.email,
    required this.username,
    required this.phoneNumber,
    required this.password,
    required this.image
  });

  Widget textBox (width){
    return Container(
      width: width,
      height: 70,
      decoration: BoxDecoration(
        color: primaryText,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: linear2
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
