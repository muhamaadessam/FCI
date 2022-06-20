import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

// ignore: non_constant_identifier_names
Widget TabDesign(String text,Color color){
  return Container(
    width: 130,
    height: 30,
    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: color),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: ArabicFonts.El_Messiri,
          package: 'google_fonts_arabic'
        ),
        maxLines: 1,
        textDirection: TextDirection.rtl,
      ),
    ),
  );
}