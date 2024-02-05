import 'package:get/get.dart';
import 'package:login_register_flutter_ui_design/modules/register/controllers/register_controller.dart';

class RegisterBinding implements Bindings {
// default dependency
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}