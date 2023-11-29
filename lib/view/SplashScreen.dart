import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/controller/SpalshScreenController.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  final controller = Get.put(SplashController());

   Splash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          SplashImg,
        ),
      ),
    );
  }
}
