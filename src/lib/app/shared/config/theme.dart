import 'package:flutter/material.dart';
import 'package:pigment/pigment.dart';

final lightBackgroundColor = Pigment.fromString("#ffffff");
final lightPrimaryColor = Pigment.fromString("#333333");
final lightAccentColor = Pigment.fromString("#4F4F4F");

final darkBackgroundColor = Pigment.fromString("#19223E");
final darkPrimaryColor = Pigment.fromString("#ffffff");
final darkAccentColor = Pigment.fromString("#29AAD1");

final ThemeData lightTheme = ThemeData(
  backgroundColor: lightBackgroundColor,
  primaryColor: lightPrimaryColor,
  accentColor: lightAccentColor,
);

final ThemeData darkTheme = ThemeData(
  backgroundColor: darkBackgroundColor,
  primaryColor: darkPrimaryColor,
  accentColor: darkAccentColor,
);
