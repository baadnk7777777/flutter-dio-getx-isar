import 'package:example_api_getx_isar/pages/dashboard/dashboard_controller.dart';
import 'package:example_api_getx_isar/pages/posts/posts_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<PostsController>(() => PostsController());
  }
}
