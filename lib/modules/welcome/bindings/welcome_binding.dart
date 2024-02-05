import 'package:get/get.dart';
import 'package:login_register_flutter_ui_design/modules/welcome/controllers/welcome_controller.dart';

class WelcomeBinding implements Bindings {
// default dependency
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
  }
}