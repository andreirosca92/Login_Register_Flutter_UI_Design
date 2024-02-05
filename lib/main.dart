import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_register_flutter_ui_design/screens/sign_up_screen.dart';

import 'screens/login_screen.dart';

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
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => LoginScreen(),
        ),
        GetPage(
          name: '/sign-up',
          page: () => SignUpScreen(),
        ),

      ],
    );;
  }
}
