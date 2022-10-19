import 'package:flutter/material.dart';
import 'package:vignyan/widgets/date_picker.dart';
import 'package:vignyan/widgets/textfield.dart';

import '../../widgets/appbar.dart';

class FeesHistoryView extends StatelessWidget {
  const FeesHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(center: false, backicon: true, title: 'Fees History'),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              DatePick(),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'select'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Tution Fees'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Transport Fees'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Material Fees'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Hostel Fees'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Book Fees'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Exam Fees'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Amount Paid'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Due Date'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Date of Payment'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Mode of Payment'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Total Fees'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Balance Due'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Last Date of Payment'),
              SizedBox(
                height: 15,
              ),
              CTextField(borderRadius: 10, hint: 'Fine Amount'),
            ],
          ),
        ),
      ),
    );
  }
}
