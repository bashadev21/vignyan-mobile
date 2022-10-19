import 'dart:io';

import 'package:flutter/material.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

var dashboardData = [
  {
    'image': 'assets/st.png',
    'color': const Color.fromARGB(255, 244, 191, 191),
    'title': 'Time Table'
  },
  {
    'image': 'assets/ass1.png',
    'color': const Color.fromARGB(255, 194, 222, 209),
    'title': 'Assignment'
  },
  {
    'image': 'assets/sch.png',
    'color': const Color.fromARGB(255, 177, 188, 230),
    'title': 'Attendance'
  },
  {
    'image': 'assets/bus.png',
    'color': const Color.fromARGB(255, 249, 235, 200),
    'title': 'Transport'
  },
  {
    'image': 'assets/hostel.png',
    'color': Color.fromARGB(255, 172, 125, 136),
    'title': 'Hostel Details'
  },
  {
    'image': 'assets/exam.png',
    'color': const Color.fromARGB(255, 162, 179, 139),
    'title': 'Exam Time\nTable'
  },
  {
    'image': 'assets/med.png',
    'color': const Color.fromARGB(255, 244, 191, 191),
    'title': 'Results'
  },
  {
    'image': 'assets/event.png',
    'color': const Color.fromARGB(255, 194, 222, 209),
    'title': 'Events'
  },
  {
    'image': 'assets/book.png',
    'color': const Color.fromARGB(255, 177, 188, 230),
    'title': 'Library'
  },
  {
    'image': 'assets/fees.png',
    'color': Color.fromARGB(255, 172, 125, 136),
    'title': 'Fees Details'
  },
  {
    'image': 'assets/onc.png',
    'color': const Color.fromARGB(255, 162, 179, 139),
    'title': 'Online Class'
  },
  {
    'image': 'assets/target.png',
    'color': const Color.fromARGB(255, 249, 235, 200),
    'title': 'Syllabus Target'
  },
];
