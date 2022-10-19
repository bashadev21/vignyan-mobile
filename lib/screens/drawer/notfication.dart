import 'package:flutter/material.dart';
import 'package:vignyan/widgets/appbar.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        backicon: true,
        center: false,
        title: 'Notification',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/bell.png',
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}
