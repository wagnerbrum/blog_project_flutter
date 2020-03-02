import 'package:blog_project/app/modules/home/post_list_widget/post_list_widget.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  final listPosts;

  const PostWidget({Key key, this.listPosts}) : super(key: key);
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              "Popular Todays",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
                fontSize: 18,
                letterSpacing: 1.25,
                wordSpacing: 1.5,
              ),
            ),
          ),
          PostListWidget(
            list: widget.listPosts,
          ),
          Container(
            height: 10,
          ),
        ],
      ),
    );
  }
}
