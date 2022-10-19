import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'text.dart';

class Btn extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final Color? color;

  const Btn({Key? key, required this.text, this.onTap, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(5),
      color: Get.theme.primaryColor,
      onPressed: onTap,
      height: 40,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Txt(
          defalutsize: true,
          text: text,
          color: Colors.white,
          weight: FontWeight.w600,
        ),
      ),
    );
  }
}
