import 'package:ecommerce_app/firebase_options.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:ecommerce_app/view/DetailProduct.dart';
import 'package:ecommerce_app/view/LandingPage.dart';
import 'package:ecommerce_app/view/LoginPage.dart';
import 'package:ecommerce_app/view/OnBoardingPage.dart';
import 'package:ecommerce_app/view/SplashScreen.dart';
import 'package:ecommerce_app/view/Wallet.dart';
import 'package:ecommerce_app/view/checkoutPage.dart';
import 'package:ecommerce_app/view/orderPage.dart';
import 'package:ecommerce_app/view/profilePage.dart';
import 'package:ecommerce_app/view/registerPage.dart';
import 'package:ecommerce_app/view/HomePage.dart';
import 'package:ecommerce_app/view/settingPage.dart';
import 'package:ecommerce_app/widget/addPaymentMethod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: customTheme,
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
