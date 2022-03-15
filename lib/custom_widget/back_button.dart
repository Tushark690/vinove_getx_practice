import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        height: 40,
        width: 40,
        child: InkWell(
          onTap: () => Get.back(),
          customBorder: const StadiumBorder(),
          child: const Icon(CupertinoIcons.arrow_left),
        ),
      ),
    );
  }
}
