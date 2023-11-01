import 'package:ecommerce_app/view/LoginPage.dart';
import 'package:ecommerce_app/view/OnBoardingPage.dart';
import 'package:ecommerce_app/view/profilePage.dart';
import 'package:ecommerce_app/view/registerPage.dart';
import 'package:ecommerce_app/view/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
