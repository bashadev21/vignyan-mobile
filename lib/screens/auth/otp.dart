import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/widgets/btn.dart';
import 'package:vignyan/widgets/text.dart';

import '../../widgets/appbar.dart';
import 'reset_password.dart';

class OtpView extends StatelessWidget {
  OtpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          BaseAppBar(center: false, backicon: true, title: 'OTP Verification'),
      body: ListView(
        children: [
          SizedBox(
            height: 30.sp,
          ),
          buildOtp(),
          SizedBox(
            height: 10.sp,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Txt(
              iscenter: true,
              color: Get.theme.primaryColor,
              fsize: 13,
              weight: FontWeight.bold,
              text:
                  'We have Sent an OTP to your mail id\nPlease verify and confirm.',
            ),
          ),
          SizedBox(
            height: 15.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Btn(
                text: '   Verify   ',
                onTap: () {
                  Get.to(() => ResetPasswordView());
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildOtp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: Get.width * .75,
          child: Pinput(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            defaultPinTheme: defaultPinTheme,
            // validator: (s) {
            //   return s == '2222' ? null : 'Pin is incorrect';
            // },
            pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
            showCursor: true,
            autofocus: true,
            onCompleted: (pin) => print(pin),
          ),
        ),
      ],
    );
  }

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.black54.withOpacity(0.3),
            blurRadius: 15.0,
            offset: Offset(0.0, 0.75))
      ],
      border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(6),
    ),
  );
}
