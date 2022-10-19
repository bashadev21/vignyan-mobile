import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:animations/animations.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:upgrader/upgrader.dart';
import 'package:vignyan/screens/dashaboard/home.dart';
import 'package:vignyan/screens/dashaboard/online_cls.dart';
import 'package:vignyan/screens/dashaboard/profile.dart';

import '../screens/dashaboard/assignment.dart';
import '../screens/dashaboard/time_table.dart';
import 'appbar.dart';
import 'drawer.dart';

// ignore: must_be_immutable
class BottamBar extends StatefulWidget {
  int currentindex;
  BottamBar({Key? key, required this.currentindex}) : super(key: key);

  @override
  State<BottamBar> createState() => _BottamBarState();
}

class _BottamBarState extends State<BottamBar> {
  // final CartCon ccon = Get.find();
  // final HomeCon hcon = Get.find();
  List<Widget> _widgetOptions = <Widget>[
    TimeTblView(),
    Assignmentview(),
    HomeView(),
    OnlineClsView(),
    ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      widget.currentindex = index;

      print(index);
    });
  }

  DateTime? currentBackPressTime;

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
          msg: 'Press back button again to Exit!',
          backgroundColor: Colors.black54);
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    Upgrader().clearSavedSettings();
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        appBar: BaseAppBar(
          carticon: false,
          center: widget.currentindex == 2 ? true : false,
          title: widget.currentindex == 0
              ? 'Time Table'
              : widget.currentindex == 1
                  ? 'Assignment'
                  : widget.currentindex == 2
                      ? 'Vignyan Schools'
                      : widget.currentindex == 3
                          ? 'Online Class Schedule'
                          : widget.currentindex == 4
                              ? 'Profile'
                              : 'Vignyan Schools',
        ),
        // endDrawer: EndDrawerWidget(),
        drawer: DrawerWidget(),
        body: UpgradeAlert(
          debugLogging: true,
          showIgnore: false,
          showLater: false,
          canDismissDialog: false,

          // onIgnore: () {
          //   return true;
          // },
          dialogStyle: GetPlatform.isIOS
              ? UpgradeDialogStyle.cupertino
              : UpgradeDialogStyle.material,
          child: PageTransitionSwitcher(
            duration: const Duration(milliseconds: 800),
            transitionBuilder: (child, animation, secondaryAnimation) =>
                FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            ),
            child: _widgetOptions.elementAt(widget.currentindex),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 4,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: false,
            unselectedFontSize: 0,
            selectedFontSize: 0,
            backgroundColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset('assets/TT.png',
                    height: 25,
                    color: widget.currentindex == 0
                        ? Get.theme.primaryColor
                        : Colors.grey[400]),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/assign.png',
                    height: 25,
                    color: widget.currentindex == 1
                        ? Get.theme.primaryColor
                        : Colors.grey[400]),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/hp.png',
                    height: 25,
                    color: widget.currentindex == 2
                        ? Get.theme.primaryColor
                        : Colors.grey[400]),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/globe.png',
                    height: 25,
                    color: widget.currentindex == 3
                        ? Get.theme.primaryColor
                        : Colors.grey[400]),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/per.png',
                    height: 25,
                    color: widget.currentindex == 4
                        ? Get.theme.primaryColor
                        : Colors.grey[400]),
                label: '',
              ),
            ],
            currentIndex: widget.currentindex,
            selectedItemColor: Get.theme.primaryColor,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
