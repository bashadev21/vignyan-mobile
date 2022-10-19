import 'package:flutter/material.dart';
import 'package:vignyan/screens/dashaboard/time_table.dart';

import '../../../widgets/appbar.dart';

class TimetableView extends StatelessWidget {
  const TimetableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(center: false, backicon: true, title: 'Time Table'),
      body: TimeTblView(),
    );
  }
}
