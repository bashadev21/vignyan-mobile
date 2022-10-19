import 'package:flutter/material.dart';
import 'package:vignyan/widgets/date_picker.dart';
import 'package:vignyan/widgets/text.dart';

import '../../widgets/appbar.dart';

class AttendanceView extends StatelessWidget {
  const AttendanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
          center: false, backicon: true, title: 'Attendance History'),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            DatePick(),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 4,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 40,
                    child: Row(
                      children: [
                        Txt(
                          text: '   Date',
                          weight: FontWeight.bold,
                          fsize: 14,
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Txt(
                          text: 'Attendance',
                          weight: FontWeight.bold,
                          fsize: 14,
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 40,
                        child: Row(
                          children: [
                            Card(
                              child: Container(
                                height: 40,
                                child: Center(
                                  child: Txt(
                                    text: '   12/12/2202   ',
                                    weight: FontWeight.bold,
                                    fsize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Txt(
                                text: 'P',
                                fsize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
