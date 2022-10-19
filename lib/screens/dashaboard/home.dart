import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/screens/dashaboard/time_table.dart';
import 'package:vignyan/screens/drawer/assignment.dart';
import 'package:vignyan/screens/drawer/attendance_history.dart';
import 'package:vignyan/widgets/text.dart';

import '../../utils/common.dart';
import 'menus/exam_tbl_main.dart';
import 'menus/hostel_details.dart';
import 'menus/time_table.dart';
import 'menus/transport.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimationLimiter(
        child: GridView.builder(
            itemCount: dashboardData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 0.88),
            itemBuilder: ((context, index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 375),
                columnCount: 3,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: InkWell(
                      onTap: () {
                        var title = dashboardData[index]['title'] as String;
                        if (title == 'Time Table') {
                          Get.to(() => TimetableView());
                        } else if (title == 'Assignment') {
                          Get.to(() => AssignmentView());
                        } else if (title == 'Attendance') {
                          Get.to(() => AttendanceView());
                        } else if (title == 'Transport') {
                          Get.to(() => TransPortView());
                        } else if (title == 'Hostel Details') {
                          Get.to(() => HostelView());
                        } else if (title == 'Exam Time\nTable') {
                          Get.to(() => ExamTimeTblView());
                        }
                      },
                      child: Card(
                        color: dashboardData[index]['color'] as Color,
                        child: Column(
                          children: [
                            Spacer(),
                            CircleAvatar(
                              radius: 26.sp,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                  dashboardData[index]['image'] as String,
                                  height: 30.sp),
                            ),
                            Spacer(),
                            Txt(
                              text: dashboardData[index]['title'] as String,
                              fsize: 10,
                              iscenter: true,
                              weight: FontWeight.bold,
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            })),
      ),
    ));
  }
}
