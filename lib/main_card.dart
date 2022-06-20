import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';


// ignore: non_constant_identifier_names
Widget MainCard(String title, Widget contantsCard) {
  return Padding(
    padding: const EdgeInsets.only(top: 4, left: 4, right: 4),
    child: Card(
      elevation: 0,
      color: Color.fromRGBO(227, 225, 225, 1),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.teal.shade700,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: ArabicFonts.Amiri,
                      package: 'google_fonts_arabic',
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
            width: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Colors.white,
            ),
            width: double.infinity,
            child: Column(
              children: [
                contantsCard,
              ],
            ),
          )
        ],
      ),
    ),
  );
}

