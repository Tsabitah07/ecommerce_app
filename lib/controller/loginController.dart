import 'package:ecommerce_app/view/HomePage.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  void login(){
    Get.off(Homebase());

    Get.snackbar("Congrats", "Login Succes");
  }
}