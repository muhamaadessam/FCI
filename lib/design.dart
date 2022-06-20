import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import 'package:photo_view/photo_view.dart';
import 'main_card.dart';

Widget silverList(String title, Widget cont) {
  return SliverList(
    // ignore: missing_return
    delegate: SliverChildBuilderDelegate((context, position) {
      if (position == 0) {
        return Column(
          children: [
            MainCard(title, cont),
            SizedBox(
              height: 16,
            )
          ],
        );
      }
    }, childCount: 1),
  );
}

Widget centerTitle(String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Align(
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontFamily: ArabicFonts.Amiri,
          package: 'google_fonts_arabic',
          color: Colors.red.shade900,
          fontWeight: FontWeight.bold,
        ),
        textDirection: TextDirection.rtl,
      ),
    ),
  );
}

Widget row(String text) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Row(
      textDirection: TextDirection.rtl,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(0, 128, 102, 1),
            size: 12,
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: ArabicFonts.El_Messiri,
                  package: 'google_fonts_arabic',
                  fontWeight: FontWeight.w300),
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget column(String text) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Center(
      child: Container(
        width: double.infinity,
        color: Colors.grey.shade200,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
    ),
  );
}
// ignore: non_constant_identifier_names
Widget column_color(String text) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Center(
      child: Container(
        width: double.infinity,
        color: Color.fromRGBO(0, 128, 102, 1),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
    ),
  );
}

Widget row_pdf(String text, String doc,context) {
  return Padding(
    padding: const EdgeInsets.only(top: 2),
    child: Row(
      textDirection: TextDirection.rtl,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Center(
            child: Icon(
              Icons.picture_as_pdf,
              color: Color.fromRGBO(0, 128, 102, 1),
              size: 24,
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PDF.assets(
                    'assets/pdfs/$doc.pdf',
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              );
            },
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: ArabicFonts.El_Messiri,
                    package: 'google_fonts_arabic',fontWeight: FontWeight.w900),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

row2(String title, String description) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Icon(
                Icons.arrow_back_ios,
                color: Color.fromRGBO(0, 128, 102, 1),
                size: 11,
              ),
            ),
            title2(title, Colors.red.shade900),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8, left: 8),
        child: Description(description),
      )
    ],
  );
}

// ignore: non_constant_identifier_names
Widget Description(String description) {
  return Padding(
    padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
    child: Align(
      alignment: Alignment.centerRight,
      child: Text(
        description,
        style: TextStyle(
            fontSize: 16,
            fontFamily: ArabicFonts.El_Messiri,
            package: 'google_fonts_arabic',
            fontWeight: FontWeight.w300),
        textDirection: TextDirection.rtl,
      ),
    ),
  );
}

Widget title2(String title, Color color) {
  return Padding(
    padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
    child: Align(
      alignment: Alignment.centerRight,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontFamily: ArabicFonts.Amiri,
          package: 'google_fonts_arabic',
          color: color,
          fontWeight: FontWeight.bold,
        ),
        textDirection: TextDirection.rtl,
      ),
    ),
  );
}



Widget image(String image,context) {
  return FlatButton(
    onPressed: (){
      Navigator.push(context,MaterialPageRoute(builder: (context) => Container(
        color: Colors.black,
        child: PhotoView(
          loadFailedChild: Center(child: CircularProgressIndicator()),
          imageProvider: AssetImage(image),
        ),
      )),);
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Image(
          image: ExactAssetImage(image),
          fit: BoxFit.contain,
        ),
        width: double.infinity,
        height: 200,
      ),
    ),
  );

}
