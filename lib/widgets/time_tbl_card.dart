import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vignyan/widgets/text.dart';

class TableCard extends StatelessWidget {
  final String title, img;
  final VoidCallback onTap;
  const TableCard(
      {Key? key, required this.title, required this.img, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: Card(
            color: Get.theme.primaryColor,
            child: Container(
              width: 300,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      img,
                      height: 40,
                    ),
                    Txt(
                      text: title,
                      color: Colors.white,
                      fsize: 14,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
