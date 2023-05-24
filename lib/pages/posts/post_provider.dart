import 'package:example_api_getx_isar/model/post.dart';
import 'package:example_api_getx_isar/library/api_request.dart';

class PostProvider {
  void getPostsList({
    Function()? beforeSend,
    Function(List<Post> posts)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/posts', data: null)
        .get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess!(
            (data as List).map((postJson) => Post.fromJson(postJson)).toList());
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
