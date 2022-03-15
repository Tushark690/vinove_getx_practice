import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinove_practice/controller/login_controller.dart';
import 'package:vinove_practice/custom_widget/blue_button.dart';
import 'package:vinove_practice/custom_widget/custom_textfield.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  LoginController controller = Get.put(LoginController(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                'Your Mobile Number',
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'We’ll send an OTP for verification',
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextField(
                  hint: 'Mobile number',
                  controller: controller.mobileController),
              const Spacer(),
              Text(
                'Lurnify needs your number to customize , To customize your Study planner .',
              ),
              const SizedBox(
                height: 20,
              ),
              BlueButton(
                text: 'Continue',
                function: (){
                  controller.myVar.value='my new value';
                  controller.myDouble.value=2.5;
                  Get.toNamed('/otp');
                }
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
