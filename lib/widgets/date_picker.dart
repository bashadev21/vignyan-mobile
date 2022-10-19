import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/widgets/text.dart';

class DatePick extends StatelessWidget {
  DatePick({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () async {
            DateTime? newDateTime = await showRoundedDatePicker(
              context: context,
              initialDate: DateTime.now(),
              height: 300,
              firstDate: DateTime(DateTime.now().year - 1),
              lastDate: DateTime(DateTime.now().year + 1),
              borderRadius: 20,
            );
            print(newDateTime.toString());
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400]!,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 6.sp),
              child: Row(
                children: [
                  Txt(
                    text: '2022-09-05',
                    fsize: 11,
                    weight: FontWeight.normal,
                  ),
                  SizedBox(
                    width: 15.sp,
                  ),
                  Icon(
                    Icons.date_range,
                    size: 20,
                    color: Get.theme.primaryColor,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
