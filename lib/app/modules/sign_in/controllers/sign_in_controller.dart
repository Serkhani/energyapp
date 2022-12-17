import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  late TextEditingController phoneNumTxtCon;
  late TextEditingController addressTxtCon;
  late TextEditingController nameTxtCon;

  @override
  void onInit() {
    phoneNumTxtCon = TextEditingController();
    addressTxtCon = TextEditingController();
    nameTxtCon = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void createOne(){}

  void signIn(){}
}
