import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomDivider extends StatelessWidget {
  double? dividerWidth = 1.0;

  CustomDivider({Key? key, this.dividerWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: dividerWidth!,
    );
  }
}
