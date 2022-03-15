import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinove_practice/controller/login_controller.dart';

class AllDetails extends StatelessWidget {

  LoginController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Details'),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Mobile : ${controller.mobileController.text}'),
            Text('Name : ${controller.nameController.text}'),
            Text('Referral : ${controller.referralController.text}'),
            Text('OTP : ${controller.pinPutController.text}'),
            SizedBox(height: 100,),
            ElevatedButton(onPressed: (){}, child: Text('API CALL'))
          ],
        ),
      ),
    );
  }
}
