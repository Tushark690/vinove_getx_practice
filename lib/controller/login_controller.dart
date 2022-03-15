
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with StateMixin<dynamic> {
  final TextEditingController mobileController = TextEditingController();



  final TextEditingController nameController = TextEditingController();

  final TextEditingController referralController = TextEditingController();

  final TextEditingController pinPutController = TextEditingController();

  RxString myVar=''.obs;
  RxDouble myDouble =0.0.obs;
  RxInt myInt=0.obs;






  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    mobileController.dispose();
    nameController.dispose();
    referralController.dispose();
    pinPutController.dispose();
    super.onClose();
  }



  void changeMyVarText(){
    myVar.value = 'It changed';
  }


}
