import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controller/CheckoutController.dart';

class CheckoutView extends StatelessWidget {
  final CheckController = Get.put(CheckoutController());

  CheckoutView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 122, 240, 126),
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
