import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vignyan/widgets/appbar.dart';
import 'package:vignyan/widgets/text.dart';

import '../auth/forgotpassword.dart';
import 'change_password.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(center: false, backicon: true, title: 'Account'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                onTap: () {
                  Get.to(() => ChangePasswordView());
                },
                leading: Image.asset('assets/password.png', height: 30),
                title: Txt(
                  text: 'Change Password',
                  fsize: 11,
                  weight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Get.to(() => ForgotPasswordView());
                },
                leading: Image.asset('assets/confused.png', height: 30),
                title: Txt(
                  text: 'Forgot Password',
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
