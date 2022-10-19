import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vignyan/widgets/text.dart';
import 'package:vignyan/widgets/time_tbl_card.dart';

import '../../../widgets/appbar.dart';
import '../../../widgets/textfield.dart';
import 'exm_time_view.dart';

class ExamTimeTblView extends StatelessWidget {
  const ExamTimeTblView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          BaseAppBar(center: false, backicon: true, title: 'Exam Time-Table'),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 180,
                      width: Get.width * .8,
                      child: Image.asset(
                        'assets/exam.jpg',
                        fit: BoxFit.cover,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            TableCard(
                title: 'First Term',
                img: 'assets/term1.png',
                onTap: () {
                  Get.to(() => ExamTimeView(
                        title: 'First Term',
                      ));
                }),
            TableCard(
                title: 'Second Term',
                img: 'assets/second.png',
                onTap: () {
                  Get.to(() => ExamTimeView(
                        title: 'Second Term',
                      ));
                }),
            TableCard(
                title: 'Third Term',
                img: 'assets/third.png',
                onTap: () {
                  Get.to(() => ExamTimeView(
                        title: 'Third Term',
                      ));
                }),
            TableCard(
                title: 'Final Term',
                img: 'assets/final.png',
                onTap: () {
                  Get.to(() => ExamTimeView(
                        title: 'Final Term',
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
