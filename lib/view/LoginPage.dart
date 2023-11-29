import 'package:ecommerce_app/view/HomePage.dart';
import 'package:ecommerce_app/view/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../themes/theme.dart';
import '../widget/navigationButton.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            color: linear2,
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
              onTap: () => Get.off( LandingPage()),
              child: Container(
              margin:  EdgeInsets.all(15),
              padding:  EdgeInsets.all(10),
              decoration:  BoxDecoration(
                color: primaryText,
                shape: BoxShape.circle,
              ),
              child:  Icon(
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
                  margin:  EdgeInsets.only(top: 19, bottom: 14),
                  child: Text(
                    "Welcome Back",
                    style: Header,
                  ),
                ),
                // inputValue("Username", false),
                // inputValue("Password", true),
                InkWell(
                    onTap: () => Get.off( Homebase()),
                    child: Button("LOGIN", primaryText, Colors.black)),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
