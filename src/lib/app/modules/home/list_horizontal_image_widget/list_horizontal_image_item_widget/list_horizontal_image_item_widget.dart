import 'package:flutter/material.dart';

class ListHorizontalImageItemWidget extends StatefulWidget {
  final Function onTap;
  final bool activeFilter;
  final bool activeText;
  final String text;
  final Image image;

  const ListHorizontalImageItemWidget(
      {Key key,
      this.onTap,
      this.activeFilter = true,
      this.activeText = true,
      this.text = "",
      @required this.image})
      : super(key: key);
  @override
  _ListHorizontalImageItemWidgetState createState() =>
      _ListHorizontalImageItemWidgetState();
}

class _ListHorizontalImageItemWidgetState
    extends State<ListHorizontalImageItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap == null ? () {} : widget.onTap,
      child: Container(
        width: 240,
        height: 160,
        margin: EdgeInsets.only(left: 18.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: widget.image.image,
            fit: BoxFit.cover,
          ),
          // color: Colors.redAccent,
          borderRadius: new BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: widget.activeFilter
                ? Theme.of(context).backgroundColor.withOpacity(0.25)
                : null,
            borderRadius: new BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          child: widget.activeText
              ? Center(
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      color: Theme.of(context).backgroundColor,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : Container(),
        ),
      ),
    );
  }
}
