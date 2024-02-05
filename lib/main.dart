import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_register_flutter_ui_design/modules/login/bindings/login_binding.dart';
import 'modules/login/views/login_screen.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign-up and Login Example',
      initialBinding: LoginBinding(),
      home: LoginScreen(),
      getPages: AppPages.pages,

    );
  }
}
