import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {

  CustomTextField({required this.hint,required this.controller});
  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        border:  const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue)),
      ),

    );
  }
}
