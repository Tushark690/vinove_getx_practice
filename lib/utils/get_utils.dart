import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomGetUtils{
  static void showErrorSnackBar(String title, String body){
    Get.snackbar(title, body);
  }

  static void showSuccessSnackBar(String title, String body){
    Get.snackbar(title, body);
  }

  static void showInfoSnackBar(String title, String body){
    Get.snackbar(title, body);
  }

  static void showWarningSnackBar(String title, String body){
    Get.snackbar(title, body);
  }

  static void showLoadingDialog(){
    Get.defaultDialog(title: 'Loading', content: Row(
      children: const [
        CircularProgressIndicator(),
        SizedBox(width: 10,),
        Text('Please wait...')
      ],
    ));
  }
}