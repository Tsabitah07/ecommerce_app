import 'package:flutter/material.dart';
import '../controller/CheckoutController.dart';

import 'package:get/get.dart';

class SuccesCheckoutPage extends StatelessWidget {
  final controller = Get.put(CheckoutController());

   SuccesCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_rounded,
              color: Colors.green,
              size: 50,
            ),
            Text("Payment Succes")
          ],
        ),
      ),
    );
  }
}
