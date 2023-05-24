import 'package:example_api_getx_isar/pages/components/loading_overlay.dart';
import 'package:example_api_getx_isar/pages/posts/components/post_list_item.dart';
import 'package:example_api_getx_isar/pages/posts/posts_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: Container(
        child: GetBuilder<PostsController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.isLoading,
              child: ListView.builder(
                  itemCount: controller.postList.length,
                  itemBuilder: (context, index) => PostListItem(
                        post: controller.postList[index],
                      )),
            );
          },
        ),
      ),
    );
  }
}
