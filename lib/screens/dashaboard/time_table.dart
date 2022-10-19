import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/widgets/text.dart';

import '../../widgets/date_picker.dart';

class TimeTblView extends StatelessWidget {
  const TimeTblView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/tim.jpg'),
                DatePick(),
                SizedBox(
                  height: 10.sp,
                ),
                Expanded(
                  child: AnimationLimiter(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 12,
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
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Txt(
                                                  text: 'Time      :',
                                                  fsize: 11,
                                                ),
                                                Txt(
                                                  text: '   9.00 - 10.00',
                                                  fsize: 11,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10.sp,
                                            ),
                                            Row(
                                              children: [
                                                Txt(
                                                  text: 'Subject  :',
                                                  fsize: 11,
                                                ),
                                                Txt(
                                                  text: '   Tamil',
                                                  fsize: 11,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10.sp,
                                            ),
                                            Row(
                                              children: [
                                                Txt(
                                                  text: 'Lecturer :',
                                                  fsize: 11,
                                                ),
                                                Txt(
                                                  text: '   John',
                                                  fsize: 11,
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
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
