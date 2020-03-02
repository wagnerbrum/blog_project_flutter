import 'package:flutter/material.dart';

class PostListItemRightWidget extends StatefulWidget {
  final title;
  final author;
  final postedAt;
  final readingTime;

  const PostListItemRightWidget({
    Key key,
    this.title,
    this.author,
    this.postedAt,
    this.readingTime,
  }) : super(key: key);

  @override
  _PostListItemRightWidgetState createState() =>
      _PostListItemRightWidgetState();
}

class _PostListItemRightWidgetState extends State<PostListItemRightWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              PostItemTitleWidget(title: widget.title),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    PostItemAuthorWidget(author: widget.author),
                    PostItemInfoWidget(
                      postedAt: widget.postedAt,
                      readingTime: widget.readingTime,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PostItemTitleWidget extends StatefulWidget {
  final title;

  const PostItemTitleWidget({Key key, this.title}) : super(key: key);

  @override
  _PostItemTitleWidgetState createState() => _PostItemTitleWidgetState();
}

class _PostItemTitleWidgetState extends State<PostItemTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "${widget.title}",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      softWrap: false,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

class PostItemAuthorWidget extends StatefulWidget {
  final author;

  const PostItemAuthorWidget({Key key, this.author}) : super(key: key);
  @override
  _PostItemAuthorWidgetState createState() => _PostItemAuthorWidgetState();
}

class _PostItemAuthorWidgetState extends State<PostItemAuthorWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "${widget.author}",
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      softWrap: false,
      style: TextStyle(
        fontSize: 11,
        color: Theme.of(context).accentColor,
      ),
    );
  }
}

class PostItemInfoWidget extends StatefulWidget {
  final postedAt;
  final readingTime;

  const PostItemInfoWidget({Key key, this.postedAt, this.readingTime})
      : super(key: key);

  @override
  _PostItemInfoWidgetState createState() => _PostItemInfoWidgetState();
}

class _PostItemInfoWidgetState extends State<PostItemInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "${widget.postedAt}. ${widget.readingTime} read",
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      softWrap: false,
      style: TextStyle(
        fontSize: 8,
        color: Theme.of(context).accentColor.withOpacity(0.65),
      ),
    );
  }
}
