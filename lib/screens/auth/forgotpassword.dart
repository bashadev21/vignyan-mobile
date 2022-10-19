import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/widgets/btn.dart';
import 'package:vignyan/widgets/textfield.dart';

import '../../widgets/appbar.dart';
import 'otp.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        center: false,
        backicon: true,
        title: 'Forgot Password',
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            SizedBox(
              height: 15.sp,
            ),
            CTextField(borderRadius: 12, hint: 'Email ID / Mobile Number'),
            SizedBox(
              height: 15.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Btn(
                  text: '      Get OTP      ',
                  onTap: () {
                    Get.to(() => OtpView());
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
