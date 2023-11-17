import 'package:ecommerce_app/controller/checkoutController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccesCheckoutPage extends StatelessWidget {
  final controller = Get.put(CheckoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle_rounded,
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
