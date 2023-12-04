import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/controller/checkoutController.dart';
import 'package:lottie/lottie.dart';

class CheckoutView extends StatelessWidget {
  final CheckControll checkController = Get.put(CheckControll()); // Fix typo here

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 122, 240, 126),
      child: Center(
        child: Lottie.asset(
          'assets/images/Success.json',
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
        ),
      ),
    );
  }
}
