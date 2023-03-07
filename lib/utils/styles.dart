import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle safeGoogleFont(
  String fontFamily, {
  TextStyle? textStyle,
  Color? color,
  Color? backgroundColor,
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  double? letterSpacing,
  double? wordSpacing,
  TextBaseline? textBaseline,
  double? height,
  Locale? locale,
  Paint? foreground,
  Paint? background,
  List<Shadow>? shadows,
  List<FontFeature>? fontFeatures,
  TextDecoration? decoration,
  Color? decorationColor,
  TextDecorationStyle? decorationStyle,
  double? decorationThickness,
}) {
  try {
    return GoogleFonts.getFont(
      fontFamily,
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  } catch (ex) {
    return GoogleFonts.getFont(
      "Source Sans Pro",
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }
}

// ! remove this and make it as local variable in footer widget
TextStyle footerBoldText(
    double fontSize, FontWeight fontWeight, BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return TextStyle(
    fontFamily: 'Poppins',
    fontSize: fontSize * ffem,
    fontWeight: fontWeight,
    height: 1.5 * ffem / fem,
    color: const Color(0xff000000),
  );
}

/* textStyle method */
TextStyle textStyle(
  BuildContext context,
  String font,
  double size,
  FontWeight fontWeight,
  double fontHeight,
  double letterSpacing,
  Color color,
) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return TextStyle(
    fontFamily: font,
    fontSize: size * ffem,
    fontWeight: fontWeight,
    height: fontHeight * ffem / fem,
    letterSpacing: letterSpacing * fem,
    color: color,
  );
}

/* Navigation Bar: navItem widget  */
Widget navItemContainer(
  BuildContext context,
  String title,
  TextStyle textStyle,
  Function() method,
) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 0 * fem),
    child: TextButton(
      onPressed: method,
      child: Text(
        title,
        style: textStyle,
      ),
    ),
  );
}

/* Navigation Bar: navSignBttn widget */
Widget navSignBttnContainer(BuildContext context, String title,
    TextStyle textStyle, Function() method) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 0 * fem),
    width: 140 * fem,
    height: double.infinity,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: const Color(0x3f000000),
          offset: Offset(0 * fem, 4 * fem),
          blurRadius: 7 * fem,
        ),
      ],
    ),
    child: Center(
      child: SizedBox(
        height: 60 * fem,
        width: 140 * fem,
        child: ElevatedButton(
          onPressed: method,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: textStyle,
          ),
        ),
      ),
    ),
  );
}

/* textCountanier method */
Widget textPositioned(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  String text,
  TextStyle textStyle,
) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: Align(
      child: SizedBox(
        width: width * fem,
        height: height * fem,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: textStyle,
        ),
      ),
    ),
  );
}

/* textCountanier method */
Widget textBttnPositioned(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  String text,
  TextStyle textStyle,
  Function() onpressed,
) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: Align(
      child: SizedBox(
        width: width * fem,
        height: height * fem,
        child: TextButton(
          onPressed: onpressed,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: textStyle,
          ),
        ),
      ),
    ),
  );
}

/* colorCountanier method */
Widget colorPositioned(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  double borderRadius,
  Color color,
  Color borderColor,
) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: Align(
      child: SizedBox(
        width: width * fem,
        height: height * fem,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius * fem),
            color: color,
            border: Border.all(color: borderColor),
          ),
        ),
      ),
    ),
  );
}

/* blurContainer method */
Widget blurPositioned(
  BuildContext context,
  double left,
  double top,
  double sigmaX,
  double sigmaY,
  double width,
  double height,
  Color color,
) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: sigmaX * fem,
          sigmaY: sigmaY * fem,
        ),
        child: Align(
          child: SizedBox(
            width: width * fem,
            height: height * fem,
            child: Container(
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

/* elevatedBttn method */
Widget elevatedBttnPositioned(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  Color bttnColor,
  Color borderColor,
  double borderWidth,
  double borderRadius,
  Function() onPressed,
  String text,
  TextStyle textStyle,
) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: Align(
      child: SizedBox(
        width: width * fem,
        height: height * fem,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: bttnColor,
            side: BorderSide(
              color: borderColor,
              width: borderWidth * fem,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius * fem),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    ),
  );
}

/* imageContainer */
Widget imagepositioned(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  String image,
) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: Align(
      child: SizedBox(
        width: width * fem,
        height: height * fem,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    ),
  );
}

/* textFieldContainer */
Widget textFieldPositioned(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  String hintText,
  TextStyle style,
  int maxLines,
  Color bgColor,
  Color borderColor,
  double boderRadius,
) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: Align(
      child: SizedBox(
        width: width * fem,
        height: height * fem,
        child: TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: style,
            filled: true,
            fillColor: bgColor,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(boderRadius),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget imageContainer(BuildContext context, double left, double top,
    double right, double bottom, double width, double height, String image) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin:
        EdgeInsets.fromLTRB(left * fem, top * fem, right * fem, bottom * fem),
    width: width * fem,
    height: height * fem,
    child: Image.asset(
      image,
      // width: width * fem,
      // height: height * fem,
    ),
  );
}
