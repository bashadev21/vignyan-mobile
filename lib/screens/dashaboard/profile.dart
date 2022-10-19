import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/widgets/text.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10.sp,
            ),
            Image.asset(
              'assets/graduate.png',
              height: 100,
            ),
            SizedBox(
              height: 10.sp,
            ),
            Txt(
              text: 'R.Basha',
              weight: FontWeight.bold,
            ),
            SizedBox(
              height: 10.sp,
            ),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Txt(
                          text: 'Class         :',
                          fsize: 11,
                        ),
                        Txt(
                          text: '   Xth std',
                          fsize: 11,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      children: [
                        Txt(
                          text: 'Section      :',
                          fsize: 11,
                        ),
                        Txt(
                          text: '   D',
                          fsize: 11,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      children: [
                        Txt(
                          text: 'Roll No       :',
                          fsize: 11,
                        ),
                        Txt(
                          text: '  007',
                          fsize: 11,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      children: [
                        Txt(
                          text: 'Phone No   :',
                          fsize: 11,
                        ),
                        Txt(
                          text: '  9876543210',
                          fsize: 11,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Txt(
                          text: 'Address      :',
                          fsize: 11,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Txt(
                                text: '  1/2,demo addrress',
                                fsize: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      children: [
                        Txt(
                          text: 'Bus No        :',
                          fsize: 11,
                        ),
                        Txt(
                          text: '  73',
                          fsize: 11,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
