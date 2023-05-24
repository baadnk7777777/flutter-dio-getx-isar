import 'package:example_api_getx_isar/model/post.dart';
import 'package:get/get.dart';
import 'package:example_api_getx_isar/pages/posts/post_provider.dart';

class PostsController extends GetxController {
  List<Post> postList = [];
  bool isLoading = true;

  @override
  void onInit() {
    PostProvider().getPostsList(
      beforeSend: () {
        print("Before send");
      },
      onSuccess: (posts) {
        postList.addAll(posts);
        isLoading = false;
        update();
        print("Success");
        print(posts.length);
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },
    );
    super.onInit();
  }
}
