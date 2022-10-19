import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/appbar.dart';
import '../../../widgets/text.dart';

class ExamTimeView extends StatelessWidget {
  final String title;
  const ExamTimeView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(center: false, backicon: true, title: title),
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
                        'assets/schedule.jpg',
                        fit: BoxFit.cover,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            AnimationLimiter(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: Column(
                            children: [
                              Card(
                                color: Get.theme.primaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Txt(
                                            text: 'Exam Date    :',
                                            color: Colors.white,
                                            fsize: 11,
                                          ),
                                          Txt(
                                            text: '   9.00 - 10.00',
                                            fsize: 11,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                      Row(
                                        children: [
                                          Txt(
                                            text: 'Subject         :',
                                            color: Colors.white,
                                            fsize: 11,
                                          ),
                                          Txt(
                                            text: '   Tamil',
                                            fsize: 11,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                      Row(
                                        children: [
                                          Txt(
                                            text: 'Time             :',
                                            fsize: 11,
                                            color: Colors.white,
                                          ),
                                          Txt(
                                            text: '   01.00AM-02.00AM',
                                            fsize: 11,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.sp,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
