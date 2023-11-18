import 'dart:async';

import 'package:ecommerce_app/view/HomePage.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 2), () {
      Get.off(Homebase());
    });
  }
}
