import 'package:blog_project/app/modules/home/Post.dart';
import 'package:flutter/material.dart';

class PostListItemLeftWidget extends StatefulWidget {
  final ImagePost image;

  const PostListItemLeftWidget({Key key, this.image}) : super(key: key);
  @override
  _PostListItemLeftWidgetState createState() => _PostListItemLeftWidgetState();
}

class _PostListItemLeftWidgetState extends State<PostListItemLeftWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: widget.image.isAsset
                  ? Image.asset(widget.image.src).image
                  : Image.network(widget.image.src).image,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }
}
