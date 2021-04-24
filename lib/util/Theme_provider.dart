import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Color(0xffe9c469),
  brightness: Brightness.light,
  backgroundColor: Color(0xfffbf2da),
  accentColor: Color(0xff204452), //dark blue
  indicatorColor: Color(0xff2a9d90), //light blue
  accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.white54,
  fontFamily: 'Literata',

  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Literata'),
  ),
);

final ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Color(0xffe9c469),
  primaryColorLight: Colors.white12,
  primaryColorDark: Colors.grey,
  brightness: Brightness.light,
  backgroundColor: Color(0xfffbf2da),
  accentColor: Color(0xff204452),
  indicatorColor: Color(0xff2a9d90),
  accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.black54,
  fontFamily: 'Literata',

  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 15.0, color: Colors.white),
    bodyText2: TextStyle(
        fontSize: 15.0, color: Color(0xff204452), fontFamily: 'Roboto'),
  ),
);

// class ThemeNotifier with ChangeNotifier {
//   ThemeData _themeData;
//   ThemeNotifier(this._themeData);
//   getTheme() => _themeData;
//   setTheme(ThemeData themeData) async {
//     _themeData = themeData;
//     notifyListeners();
//   }
// }
// todo: implentar darkmode toggle dejar para el v2
