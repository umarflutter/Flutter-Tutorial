import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.redAccent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      );
      static ThemeData darktheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );

}
