import 'package:blog_project/app/modules/home/Post.dart';
import 'package:blog_project/app/modules/home/post_list_widget/post_list_item_widget/post_list_item_widget.dart';
import 'package:flutter/material.dart';

class PostListWidget extends StatefulWidget {
  final List<Post> list;

  const PostListWidget({Key key, this.list}) : super(key: key);
  @override
  _PostListWidgetState createState() => _PostListWidgetState();
}

class _PostListWidgetState extends State<PostListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.list
          .map(
            (element) => PostListItemWidget(
              post: element,
            ),
          )
          .toList(),
    );
  }
}
