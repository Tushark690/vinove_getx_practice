import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          child: Container(
              padding: const EdgeInsets.only(left: 5),
              alignment: Alignment.center,
              height: 50,
              width: 50,
              child: Image.asset("assets/images/back_arrow.png")),
        ),
        const Text(
          'Physics Report',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.black,
            fontFamily: 'Gilroy',
          ),
        )
      ],
    );
  }
}
