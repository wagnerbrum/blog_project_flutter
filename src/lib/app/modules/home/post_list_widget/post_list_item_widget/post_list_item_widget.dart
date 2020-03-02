import 'package:blog_project/app/modules/home/Post.dart';
import 'package:blog_project/app/modules/home/post_list_widget/post_list_item_widget/post_list_item_left_widget/post_list_item_left_widget.dart';
import 'package:blog_project/app/modules/home/post_list_widget/post_list_item_widget/post_list_item_right_widget/post_list_item_right_widget.dart';
import 'package:flutter/material.dart';

class PostListItemWidget extends StatefulWidget {
  final Post post;

  const PostListItemWidget({Key key, this.post}) : super(key: key);
  @override
  _PostListItemWidgetState createState() => _PostListItemWidgetState();
}

class _PostListItemWidgetState extends State<PostListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).backgroundColor.withOpacity(0.05),
      elevation: 1,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).backgroundColor.withOpacity(0.05),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: 80,
        child: Row(
          children: <Widget>[
            PostListItemLeftWidget(image: widget.post.image),
            PostListItemRightWidget(
              title: widget.post.title,
              author: widget.post.author,
              postedAt: widget.post.postedAt,
              readingTime: widget.post.readingTime,
            ),
          ],
        ),
      ),
    );
  }
}
