import 'package:flutter/material.dart';

class MenuItemTextWidget extends StatefulWidget {
  final bool active;
  final String texto;

  const MenuItemTextWidget({Key key, this.active, this.texto})
      : super(key: key);

  @override
  _MenuItemTextWidgetState createState() => _MenuItemTextWidgetState();
}

class _MenuItemTextWidgetState extends State<MenuItemTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(right: 16.0),
        child: Text(
          "${widget.texto}".toUpperCase(),
          style: TextStyle(
            fontWeight: widget.active ? FontWeight.bold : FontWeight.normal,
            fontSize: 14,
            color: widget.active
                ? Theme.of(context).primaryColor
                : Theme.of(context).primaryColor.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
