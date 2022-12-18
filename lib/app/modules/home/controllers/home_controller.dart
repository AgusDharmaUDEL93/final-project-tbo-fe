import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatinglanguange/app/models/validate.dart';
import 'package:validatinglanguange/app/modules/home/providers/home_provider.dart';

import '../../../../helpers/Utils.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  var valid = false.obs;
  final formKey = GlobalKey<FormState>();
  final input = TextEditingController();

  final count = 0.obs;
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
  }

  void getResponseData() {}

  Future<void> getDataAPI(BuildContext context) async {
    Get.focusScope?.unfocus();
    Utils.loadingAnimationDialog();
    try {
      Words w = await HomeProvider.postDataWords(input.text);
      valid.value = w.result!;
      var validString = valid.value ? "valid" : "tidak valid";
      Get.defaultDialog(
        title: "Result",
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        middleText: "Kalimat yang anda masukkan ${validString}",
        textConfirm: "Okay",
        confirmTextColor: Colors.white,
        buttonColor: Colors.black,
        onConfirm: () {
          Get.back();
          Get.back();
        },
      );
    } catch (e) {
      Get.back();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          duration: const Duration(seconds: 1),
        ),
      );
    }
  }

  void increment() => count.value++;
}
