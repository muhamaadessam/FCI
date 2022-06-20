import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    primaryColor:  Colors.teal.shade600,
    buttonTheme: ButtonThemeData(buttonColor: Colors.grey.shade200),
    textTheme: TextTheme(body1: TextStyle(fontFamily: ArabicFonts.Amiri, package: 'google_fonts_arabic',color: Colors.black,
      fontSize: 18)),
    appBarTheme: AppBarTheme(
      color:Color.fromRGBO(244, 244, 244, 1),
    ),
  );
}
