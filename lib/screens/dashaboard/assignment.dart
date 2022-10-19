import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/widgets/btn.dart';
import 'package:vignyan/widgets/text.dart';

import '../../widgets/date_picker.dart';

class Assignmentview extends StatefulWidget {
  const Assignmentview({Key? key}) : super(key: key);

  @override
  State<Assignmentview> createState() => _AssignmentviewState();
}

class _AssignmentviewState extends State<Assignmentview>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/writing.jpg')),
                SizedBox(
                  height: 10.sp,
                ),
                DatePick(),
                SizedBox(
                  height: 10.sp,
                ),
                Container(
                  height: 50,
                  width: Get.width * .8,
                  decoration: BoxDecoration(
                    color: Get.theme.primaryColor,
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                  ),
                  child: TabBar(
                    onTap: (o) {
                      print(o);
                    },
                    controller: _tabController,

                    // give the indicator a decoration (color and border radius)
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5.0,
                        ),
                        color: Colors.white),
                    labelColor: Get.theme.primaryColor,
                    padding: EdgeInsets.all(3),
                    labelStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    unselectedLabelColor: Colors.white,
                    tabs: const [
                      // first tab [you can add an icon using the icon property]
                      Tab(
                        text: 'Class Work',
                      ),
                      // second tab [you can add an icon using the icon property]
                      Tab(
                        text: 'Home Work',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                // tab bar view here
                Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _tabController,
                    children: [
                      ClassWorkTab(),
                      ClassWorkTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ClassWorkTab extends StatelessWidget {
  const ClassWorkTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 12,
          itemBuilder: ((context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                    child: Column(
                  children: [
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Txt(
                                  text: 'Subject                   :',
                                  fsize: 11,
                                ),
                                Txt(
                                  text: '   Tamil',
                                  fsize: 11,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.sp,
                            ),
                            Row(
                              children: [
                                Txt(
                                  text: 'Chapter                   :',
                                  fsize: 11,
                                ),
                                Txt(
                                  text: '   1',
                                  fsize: 11,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.sp,
                            ),
                            Row(
                              children: [
                                Txt(
                                  text: 'Assignment File     :',
                                  fsize: 11,
                                ),
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        300,
                                      ),
                                      color: Colors.grey.withOpacity(0.4)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.sp, vertical: 3.sp),
                                    child: Txt(
                                      text: 'Download File',
                                      fsize: 9.5,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.sp,
                            ),
                            Row(
                              children: [
                                Txt(
                                  text: 'Upload File             :',
                                  fsize: 11,
                                ),
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        300,
                                      ),
                                      color: Colors.grey.withOpacity(0.4)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.sp, vertical: 3.sp),
                                    child: Txt(
                                      text: 'Upload File',
                                      fsize: 9.5,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    if (index == 11)
                      Column(
                        children: [
                          Btn(
                            text: 'Submit',
                            onTap: () {},
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Btn(
                            text: 'View Reports',
                            onTap: () {},
                          ),
                        ],
                      )
                  ],
                )),
              ),
            );
          })),
    );
  }
}
