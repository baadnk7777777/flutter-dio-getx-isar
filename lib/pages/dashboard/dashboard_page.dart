import 'package:example_api_getx_isar/model/post.dart';
import 'package:example_api_getx_isar/pages/dashboard/dashboard_controller.dart';
import 'package:example_api_getx_isar/pages/posts/post_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text("DashBoard"),
        ),
        body: Column(
          children: [
            Container(
              child: Center(child: Text("DashBoard")),
            ),
            TextButton(
                onPressed: () => Get.to(() => PostPage()), child: Text("Posts"))
          ],
        ),
      );
    });
  }
}
