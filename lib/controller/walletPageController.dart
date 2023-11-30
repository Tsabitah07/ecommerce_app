import 'dart:convert';

import 'package:ecommerce_app/model/eWalletModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WalletController extends GetxController {
  Rx<List<EWalletModel>> eWalletList = Rx<List<EWalletModel>>([]);
  TextEditingController eWalletNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late EWalletModel eWalletModel;
  var itemCount = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    eWalletNameController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }

  addWallet(String eWalletName, String phoneNumber, String password) {
    eWalletModel = EWalletModel(eWalletName: eWalletName, phoneNumber: phoneNumber, password: password);
    eWalletList.value.add(eWalletModel);
    itemCount.value = eWalletList.value.length;
    eWalletNameController.clear();
    phoneNumberController.clear();
    passwordController.clear();
    Get.back();
  }

  removeWallet(int index) {
    eWalletList.value.removeAt(index);
    itemCount.value = eWalletList.value.length;
  }
}