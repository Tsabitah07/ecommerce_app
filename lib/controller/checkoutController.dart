import 'package:ecommerce_app/view/HomePage.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    succesPayment();
  }

  void succesPayment() async {
    Future.delayed(Duration(seconds: 2), () async {
      Get.off(Homebase());
    });
  }
}