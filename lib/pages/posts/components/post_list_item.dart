import 'package:example_api_getx_isar/model/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostListItem extends StatelessWidget {
  final Post? post;

  const PostListItem({super.key, this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(top: 20, right: 20, bottom: 15, left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(15),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.network(
                  "https://picsum.photos/50/50?random=1",
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      post!.title ?? "",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "2 days ago",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          Text(
            post!.body ?? "",
            style: TextStyle(color: Colors.black87),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.heart),
              ),
              IconButton(
                onPressed: () {
                  print("Insert indatabase.");
                },
                icon: const Icon(CupertinoIcons.bookmark),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.hand_thumbsdown,
                  color: Colors.blueAccent,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.hand_thumbsup,
                  color: Colors.blueAccent,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
