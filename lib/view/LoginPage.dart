import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../themes/theme.dart';
import '../widget/navigationButton.dart';
import '../widget/textInput.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: Color(0xff8A83EF),
                child: SvgPicture.asset(
                  'assets/images/Reg.svg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.68,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                child: Container(
                  margin: EdgeInsets.all(13),
                  padding: EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    color: primaryText,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: commonText,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: primaryText,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 19, bottom: 14),
                      child: Text(
                        "Welcome Back",
                        style: Header,
                      ),
                    ),
                    inputValue("Username", false),
                    inputValue("Password", true),
                    button("LOGIN", primaryText, primaryColor),
                  ],
                ),
              ),
            )
          ]
      ),
    );;
  }
}
