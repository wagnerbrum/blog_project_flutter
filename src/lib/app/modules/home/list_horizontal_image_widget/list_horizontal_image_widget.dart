import 'package:blog_project/app/modules/home/list_horizontal_image_widget/list_horizontal_image_item_widget/list_horizontal_image_item_widget.dart';
import 'package:flutter/material.dart';

class ListHorizontalImageWidget extends StatefulWidget {
  final List<Widget> listItem;
  final bool activeFilter;
  final bool activeText;

  const ListHorizontalImageWidget({
    Key key,
    this.listItem,
    this.activeFilter = true,
    this.activeText = true,
  }) : super(key: key);
  @override
  _ListHorizontalImageWidgetState createState() =>
      _ListHorizontalImageWidgetState();
}

class _ListHorizontalImageWidgetState extends State<ListHorizontalImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.listItem.length,
        itemBuilder: (context, index) {
          final ListHorizontalImageItemWidget item = widget.listItem[index];

          return (widget.listItem.length - 1) == index
              ? Container(
                  margin: EdgeInsets.only(right: 16.0),
                  child: ListHorizontalImageItemWidget(
                    image: item.image,
                    activeFilter: widget.activeFilter,
                    activeText: widget.activeText,
                    text: item.text,
                    onTap: item.onTap,
                  ),
                )
              : ListHorizontalImageItemWidget(
                  image: item.image,
                  activeFilter: widget.activeFilter,
                  activeText: widget.activeText,
                  text: item.text,
                  onTap: item.onTap,
                );
        },
      ),
    );
  }
}
