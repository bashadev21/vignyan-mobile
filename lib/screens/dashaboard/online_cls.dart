import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/widgets/text.dart';

class OnlineClsView extends StatelessWidget {
  const OnlineClsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/online.jpg'),
                Expanded(
                  child: AnimationLimiter(
                    child: ListView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 375),
                            child: SlideAnimation(
                              verticalOffset: 50.0,
                              child: FadeInAnimation(
                                child: Card(
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 15),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Container(
                                            child: Column(
                                              children: [
                                                Txt(
                                                  text: 'Date',
                                                  fsize: 12,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  height: 10.sp,
                                                ),
                                                Txt(
                                                  text: '12/12/2022',
                                                  fsize: 10,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          )),
                                          Expanded(
                                              child: Container(
                                            child: Column(
                                              children: [
                                                Txt(
                                                  text: 'Subject',
                                                  fsize: 12,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  height: 10.sp,
                                                ),
                                                Txt(
                                                  text: 'Tamil',
                                                  fsize: 10,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          )),
                                          Expanded(
                                              child: Container(
                                            child: Column(
                                              children: [
                                                Txt(
                                                  text: 'Time',
                                                  fsize: 12,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  height: 10.sp,
                                                ),
                                                Txt(
                                                  text: '12 am',
                                                  fsize: 10,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          )),
                                          Expanded(
                                              child: Container(
                                            child: Column(
                                              children: [
                                                Txt(
                                                  text: 'Staff',
                                                  fsize: 12,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  height: 10.sp,
                                                ),
                                                Txt(
                                                  text: 'John',
                                                  fsize: 10,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          )),
                                        ],
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Get.theme.primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                              ),
                            ),
                          );
                        })),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class _DiamondBorder extends ShapeBorder {
  const _DiamondBorder();

  @override
  EdgeInsetsGeometry get dimensions {
    return const EdgeInsets.only();
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection!);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..moveTo(rect.left + rect.width / 2.0, rect.top)
      ..lineTo(rect.right, rect.top + rect.height / 2.0)
      ..lineTo(rect.left + rect.width / 2.0, rect.bottom)
      ..lineTo(rect.left, rect.top + rect.height / 2.0)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  // This border doesn't support scaling.
  @override
  ShapeBorder scale(double? t) {
    return scale(t);
  }
}
