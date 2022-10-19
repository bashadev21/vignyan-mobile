import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vignyan/utils/common.dart';
import 'myapp.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  await GetStorage.init();
  runApp(const MyApp());
  // Get.put(AuthCon());
  // Get.put(HomeCon());
  // Get.put(ZoomCon());
  // SystemChrome.setSystemUIOverlayStyle(
  //     const SystemUiOverlayStyle(statusBarColor: Colors.blueAccent));
}
