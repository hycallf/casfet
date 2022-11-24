import 'package:andi_s_application2/core/app_export.dart';
import 'package:andi_s_application2/presentation/user_mode_order_screen/models/user_mode_order_model.dart';

class UserModeOrderController extends GetxController {
  Rx<UserModeOrderModel> userModeOrderModelObj = UserModeOrderModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
