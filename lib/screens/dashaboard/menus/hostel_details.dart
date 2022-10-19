import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/appbar.dart';
import '../../../widgets/textfield.dart';

class HostelView extends StatelessWidget {
  const HostelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          BaseAppBar(center: false, backicon: true, title: 'Hostel Details'),
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
                        'assets/hostels.jpg',
                        fit: BoxFit.cover,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Student Name'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Roll No'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Address'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Mobile No'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Room No'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Hostel Phone No'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Hostel Incharge No'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Hostel Incharge Name'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Hostel Fees'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Hostel Address'),
          ],
        ),
      ),
    );
  }
}
