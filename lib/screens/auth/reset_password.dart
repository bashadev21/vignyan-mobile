import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/screens/auth/login.dart';
import 'package:vignyan/widgets/btn.dart';
import 'package:vignyan/widgets/textfield.dart';

import '../../widgets/appbar.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          BaseAppBar(center: false, backicon: true, title: 'Reset Password'),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            CTextField(borderRadius: 12, hint: 'New Password'),
            SizedBox(
              height: 10.sp,
            ),
            CTextField(borderRadius: 12, hint: 'Confirm Password'),
            SizedBox(
              height: 15.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Btn(
                  text: '  Submit  ',
                  onTap: () {
                    Get.to(() => LoginView());
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
