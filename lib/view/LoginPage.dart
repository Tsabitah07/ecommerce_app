import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/widget/textInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            color: Color(0xff8A83EF),
            child: SvgPicture.asset(
              'assets/images/Reg.svg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .42,
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * .6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(19),
                    child: Text(
                      "Welcome Back",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  inputValue("Username", false)
                ],
              ),
            ))
      ]),
    );
  }
}
