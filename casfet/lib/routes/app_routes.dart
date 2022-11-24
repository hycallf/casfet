import 'package:andi_s_application2/presentation/user_mode_order_screen/user_mode_order_screen.dart';
import 'package:andi_s_application2/presentation/user_mode_order_screen/binding/user_mode_order_binding.dart';
import 'package:andi_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:andi_s_application2/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String userModeOrderScreen = '/user_mode_order_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: userModeOrderScreen,
      page: () => UserModeOrderScreen(),
      bindings: [
        UserModeOrderBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => UserModeOrderScreen(),
      bindings: [
        UserModeOrderBinding(),
      ],
    )
  ];
}
