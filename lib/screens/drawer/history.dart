import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/appbar.dart';
import '../../widgets/text.dart';
import '../auth/forgotpassword.dart';
import 'assignment.dart';
import 'attendance_history.dart';
import 'fees_history.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(center: false, backicon: true, title: 'History'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                onTap: () {
                  Get.to(() => FeesHistoryView());
                },
                leading: Image.asset('assets/fees.png', height: 30),
                title: Txt(
                  text: 'Fees',
                  fsize: 11,
                  weight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Get.to(() => AttendanceView());
                },
                leading: Image.asset('assets/sch.png', height: 30),
                title: Txt(
                  text: 'Attendance',
                  fsize: 11,
                  weight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Get.to(() => AssignmentView());
                },
                leading: Image.asset('assets/ass1.png', height: 30),
                title: Txt(
                  text: 'Assignment',
                  fsize: 11,
                  weight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
