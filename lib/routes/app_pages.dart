import 'package:example_api_getx_isar/pages/dashboard/dashboard_binding.dart';
import 'package:example_api_getx_isar/pages/dashboard/dashboard_page.dart';
import 'package:example_api_getx_isar/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashBoard(),
      binding: DashboardBinding(),
    ),
  ];
}
