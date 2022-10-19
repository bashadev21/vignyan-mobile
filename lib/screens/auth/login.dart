import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/widgets/appbar.dart';
import 'package:vignyan/widgets/btn.dart';
import 'package:vignyan/widgets/text.dart';
import 'package:vignyan/widgets/textfield.dart';

import '../../widgets/bottom_bar.dart';
import 'forgotpassword.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: BaseAppBar(
        center: true,
        noIcon: true,
        title: 'VIGNYAN SCHOOLS',
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Txt(
                text: 'Student Login',
                color: Get.theme.primaryColor,
                weight: FontWeight.bold,
              ),
              SizedBox(
                height: 10.sp,
              ),
              Image.asset(
                'assets/student.png',
              ),
              SizedBox(
                height: 20.sp,
              ),
              CTextField(
                hint: 'Student ID / Name',
              ),
              SizedBox(
                height: 20.sp,
              ),
              CTextField(
                hint: 'Password',
                obs: true,
              ),
              SizedBox(
                height: 6.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => ForgotPasswordView());
                    },
                    child: Txt(
                      text: 'Forgot password?',
                      fsize: 10,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Btn(
                onTap: () {
                  Get.to(() => BottamBar(
                        currentindex: 2,
                      ));
                },
                text: '     Login     ',
                color: Get.theme.primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
