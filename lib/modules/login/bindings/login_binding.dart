import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginBinding implements Bindings {
// default dependency
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    }
}