import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/screens/auth/login.dart';
import 'package:vignyan/screens/dashaboard/profile.dart';
import 'package:vignyan/widgets/bottom_bar.dart';
import 'package:vignyan/widgets/btn.dart';
import 'package:vignyan/widgets/text.dart';

import '../screens/drawer/account.dart';
import '../screens/drawer/history.dart';
import '../screens/drawer/notfication.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15),
        )),
        child: Column(
          children: [
            SizedBox(
              height: 20.sp,
            ),
            Image.asset(
              'assets/graduate.png',
              height: 100,
            ),
            SizedBox(
              height: 10.sp,
            ),
            ListTile(
              onTap: () {
                Get.back();
                Get.to(() => AccountView());
              },
              leading: Image.asset('assets/user.png', height: 35),
              title: Txt(
                text: 'Account',
                defalutsize: true,
                fsize: 14,
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {
                Get.back();
                Get.to(() => NotificationView());
              },
              leading: Image.asset('assets/bell.png', height: 35),
              title: Txt(
                text: 'Notification',
                defalutsize: true,
                fsize: 14,
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {
                Get.back();
                Get.offAll(() => BottamBar(
                      currentindex: 4,
                    ));
              },
              leading: Image.asset('assets/pro.png', height: 35),
              title: Txt(
                text: 'Profile',
                defalutsize: true,
                fsize: 14,
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {
                Get.back();
                Get.to(() => HistoryView());
              },
              leading: Image.asset('assets/clock.png', height: 35),
              title: Txt(
                text: 'History',
                defalutsize: true,
                fsize: 14,
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {
                Get.back();
                Get.dialog(Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 155,
                          width: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(),
                              Txt(
                                text: 'Are you sure want to logout?',
                                fsize: 14,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Btn(
                                    text: '  Cancel  ',
                                    onTap: () {
                                      Get.back();
                                    },
                                  ),
                                  Btn(
                                    text: '  Logout  ',
                                    onTap: () {
                                      Get.offAll(() => LoginView());
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ));
              },
              leading: Image.asset('assets/logout.png', height: 35),
              title: Txt(
                text: 'Logout',
                defalutsize: true,
                fsize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
