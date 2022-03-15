import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinove_practice/controller/login_controller.dart';
import 'package:vinove_practice/custom_widget/blue_button.dart';
import 'package:vinove_practice/custom_widget/custom_textfield.dart';
import 'package:vinove_practice/screens/onboarding/all_details.dart';
import 'package:vinove_practice/utils/get_utils.dart';



class NameScreen extends StatelessWidget {

  LoginController controller =Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          _backButton(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 2,
            color: const Color(0xFFF5F5F5),
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Name',
              )),
          const SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomTextField(hint: 'Write Here',controller: controller.nameController,)),
          const SizedBox(
            height: 24,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Referral Code',
              )),
          const SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomTextField(hint: 'Referral Code',controller: controller.referralController,)),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Having Trouble ? Write to us at help@Lurnify.com',
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: BlueButton(
                text: 'Continue',
                function: controller.changeMyVarText,
              )),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _backButton() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
            height: 70,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back)),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Name',
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
