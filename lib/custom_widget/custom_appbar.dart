import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  CustomAppBar({required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
