import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBarController extends GetxController {
  late ScrollController scrollController;
  RxDouble appBarOpacity = 1.0.obs;

  @override
  void onInit() {
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.hasClients) {
        double offset = scrollController.offset;
        // Define the threshold at which the AppBar should start fading.
        const double threshold = 100.0;
        if (offset < threshold) {
          // Calculate the opacity based on scroll position.
          double opacity = 1.0 - (offset / threshold);
          appBarOpacity.value = opacity.clamp(0.0, 1.0);
        }
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
