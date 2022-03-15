import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:vinove_practice/controller/login_controller.dart';
import 'package:vinove_practice/custom_widget/blue_button.dart';
import 'package:vinove_practice/custom_widget/blue_outline_button.dart';


class OtpScreen extends StatelessWidget {
  final FocusNode _pinPutFocusNode = FocusNode();

  LoginController controller= Get.find();
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.deepPurpleAccent),
      borderRadius: BorderRadius.circular(2.0),
    );
  }

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
              child:
              Obx(()=> Text(
                  'We’ve sent it on +91 ${controller.mobileController.text} ${controller.myVar}',
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          _otpField(),
          const SizedBox(
            height: 35,
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child:
              Text('Didn’t receive the OTP ?')),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BlueOutlineButton(
                    text: 'Resend OTP',
                    function: (){
                      controller.myVar.value="resend clicked";
                    },
                  ),
                  BlueOutlineButton(
                    text: 'Get a Call',
                    function: () {},
                  ),
                ],
              )),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child:
              Text(
                'Having Trouble ? Write to us at help@Lurnify.com',
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child:
              BlueButton(
                text: 'Continue',
                function: (){
                  Get.toNamed('/name-entry');
                },
              )),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _otpField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: PinPut(
            fieldsCount: 6,
            // onSubmit: (String pin) => _showSnackBar(pin, context),
            focusNode: _pinPutFocusNode,
            controller: controller.pinPutController,
            submittedFieldDecoration: _pinPutDecoration.copyWith(
              borderRadius: BorderRadius.circular(2.0),
            ),
            selectedFieldDecoration: _pinPutDecoration,
            followingFieldDecoration: _pinPutDecoration.copyWith(
                borderRadius: BorderRadius.circular(2.0),
                border: Border.all(color: Colors.grey))));
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
                        'Verify OTP',
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}


