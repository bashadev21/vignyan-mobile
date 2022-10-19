import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/appbar.dart';
import '../../../widgets/textfield.dart';

class TransPortView extends StatelessWidget {
  const TransPortView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          BaseAppBar(center: false, backicon: true, title: 'Transport Details'),
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
                        'assets/sb.jpg',
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
            CTextField(borderRadius: 10, hint: 'Bus No'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Pickup Location'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Bus Fee'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Pickup Time'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Driver Name'),
            SizedBox(
              height: 15,
            ),
            CTextField(borderRadius: 10, hint: 'Driver Mobile No'),
          ],
        ),
      ),
    );
  }
}
