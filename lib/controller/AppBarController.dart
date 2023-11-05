import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBarController extends GetxController {
  late ScrollController scrollController;
  RxDouble appBarOpacity = 1.0.obs;
  final RxBool showTitle = false.obs;
  final RxDouble scrollOffset = 0.0.obs;
  final RxInt currentIndexBottomNav = 0.obs;

  @override
  void onInit() {
    super.onInit();
    scrollController =
        ScrollController(); // Initialize the scrollController here.
    scrollController.addListener(() {
      scrollListener(scrollController.offset);
    });
  }

  void scrollListener(double offset) {
    scrollOffset.value = offset;
    if (offset > 50) {
      showTitle.value = true;
    } else if (offset <= 200) {
      showTitle.value = false;
    }
  }
}
