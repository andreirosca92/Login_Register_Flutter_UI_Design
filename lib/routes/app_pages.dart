import 'package:get/get.dart';
import 'package:login_register_flutter_ui_design/modules/login/bindings/login_binding.dart';
import 'package:login_register_flutter_ui_design/modules/login/views/login_screen.dart';
import 'package:login_register_flutter_ui_design/modules/register/bindings/register_binding.dart';

import 'package:login_register_flutter_ui_design/modules/register/views/sign_up_screen.dart';
import 'package:login_register_flutter_ui_design/modules/welcome/views/welcome_screen.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => const SignUpScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRoutes.welcome,
      page: () => const WelcomeScreen(),
      binding: LoginBinding(),
    ),

  ];
}