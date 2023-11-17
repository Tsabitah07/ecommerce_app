// import 'package:ecommerce_app/controller/firebaseController.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/LoginPage.dart';
import 'package:ecommerce_app/view/registerPage.dart';
import 'package:ecommerce_app/widget/navigationButton.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  // final FirebaseController _firebaseController = FirebaseController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
          children: [
            Container(
              color: linear2,
              width: screenWidth, height: screenHeight * .65,
                child: SvgPicture.asset(RunShop),
            ),
            Align(
              alignment: Alignment.bottomCenter,
                child: Container(
                  width: screenWidth, height: screenHeight * .4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                    color: primaryText,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Welcome",
                        style: Header,
                      ),
                      InkWell(
                        onTap: () => Get.off(RegisterPage()),
                        child: Button("Sign Up Here", linear2, commonText),
                      ),
                      Text("already have an account",
                        style: buttonTextStyle(),
                      ),
                      InkWell(
                        onTap: () => Get.off(LoginPage()),
                        child: Button("Login Here", linear2, commonText),
                      )
                    ],
                  ),
                )
            )
          ]
      ),
    );
  }
}
