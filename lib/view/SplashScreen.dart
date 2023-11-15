import 'package:flutter/material.dart';
import 'package:ecommerce_app/controller/SpalshScreenController.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  final controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.spatial_audio_sharp),
      ),
    );
  }
}
