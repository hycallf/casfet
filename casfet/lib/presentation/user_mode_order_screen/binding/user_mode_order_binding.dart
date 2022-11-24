import '../controller/user_mode_order_controller.dart';
import 'package:get/get.dart';

class UserModeOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserModeOrderController());
  }
}
