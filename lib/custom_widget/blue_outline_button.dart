import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BlueOutlineButton extends StatelessWidget {
  BlueOutlineButton({required this.text,required this.function});
  final String text;
  final GestureTapCallback function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: Get.width*.4,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(3)
        ),
        child: Center(
          child: Text(text,),
        ),
      ),
    );
  }
}
