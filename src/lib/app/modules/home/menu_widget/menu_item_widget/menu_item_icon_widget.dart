import 'package:flutter/material.dart';

class MenuItemIconWidget extends StatefulWidget {
  final IconData icon;

  const MenuItemIconWidget({Key key, this.icon}) : super(key: key);

  @override
  _MenuItemIconWidgetState createState() => _MenuItemIconWidgetState();
}

class _MenuItemIconWidgetState extends State<MenuItemIconWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Icon(
          widget.icon,
          size: 24,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
