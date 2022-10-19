import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'text.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool center;
  final bool backicon;
  final bool carticon;
  final bool ismoreicon;
  final bool iswhitebg;
  final bool noIcon;
  final VoidCallback ontap;
  static _defaultFunction() {
    Get.back();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  BaseAppBar(
      {Key? key,
      this.title = 'Vignyan',
      this.center = true,
      this.backicon = false,
      this.iswhitebg = false,
      this.noIcon = false,
      this.ontap = _defaultFunction,
      this.ismoreicon = false,
      this.carticon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      centerTitle: center,
      title: Txt(
        text: title,
        color: iswhitebg ? Get.theme.primaryColor : Colors.white,
        weight: FontWeight.bold,
        defalutsize: true,
      ),
      actions: [],
      leading: noIcon
          ? SizedBox()
          : backicon
              ? IconButton(
                  onPressed: ontap,
                  icon: Icon(
                    CupertinoIcons.arrow_left,
                    color: iswhitebg ? Get.theme.primaryColor : Colors.white,
                  ))
              : IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
      backgroundColor: iswhitebg ? Colors.white : Get.theme.primaryColor,
    );
  }
}
