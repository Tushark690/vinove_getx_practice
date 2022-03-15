import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BlueButton extends StatelessWidget {
  BlueButton({required this.text,required this.function});
  final String text;
  final GestureTapCallback function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: function,
        child: Container(
          width: Get.width,
          padding:
          const EdgeInsets.symmetric(vertical: 18, horizontal: 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient:   LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.blue
                ]
              )
          ),
          child: Center(
            child: Text(
              text,

            ),
          ),
        ));
  }
}
