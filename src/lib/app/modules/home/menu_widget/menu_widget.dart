import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  final List<Widget> listMenu;

  const MenuWidget({Key key, this.listMenu}) : super(key: key);
  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      height: 64,
      child: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: widget.listMenu,
        ),
      ),
    );
  }
}
