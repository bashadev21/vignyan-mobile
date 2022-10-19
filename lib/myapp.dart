import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/screens/auth/otp.dart';

import 'screens/auth/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        defaultTransition: Transition.topLevel,

        title: 'Vignyan',
        themeMode: ThemeMode.light,
        theme: ThemeData(
            useMaterial3: true,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            scaffoldBackgroundColor: Colors.grey[50],
            primaryColorLight: Colors.blueAccent,
            primaryColor: Color.fromARGB(255, 41, 52, 98)),
        // home: GetStorage().read('userid').toString() == 'null'
        //     ? LoginView()
        //     : BottamBar(currentindex: 0),
        home: OtpView(),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
