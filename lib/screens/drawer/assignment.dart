import 'package:flutter/material.dart';

import '../../widgets/appbar.dart';
import '../dashaboard/assignment.dart';

class AssignmentView extends StatelessWidget {
  const AssignmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(center: false, backicon: true, title: 'Assignment'),
      body: Assignmentview(),
    );
  }
}
