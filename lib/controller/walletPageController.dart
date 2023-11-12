import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletPageController extends GetxController {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expiryDateController = TextEditingController();
  TextEditingController cardHolderNameController = TextEditingController();
  TextEditingController cvvCodeController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  RxBool isCvvFocused = false.obs;

  void updateCardNumber(String value) {
    cardNumberController.text = value;
  }

  void updateExpiryDate(String value) {
    expiryDateController.text = value;
  }

  void updateCardHolderName(String value) {
    cardHolderNameController.text = value;
  }

  void updateCvvCode(String value) {
    cvvCodeController.text = value;
  }

  void toggleCvvFocus() {
    isCvvFocused.value = !isCvvFocused.value;
  }

  savePaymentMethod(String bankName, String cardNumber, String expiryDate, String cardHolderName, String cvvCode){

  }
}
