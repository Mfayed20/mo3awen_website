import 'dart:ui';
import 'package:flutter/material.dart';

// Creates a TextStyle based on the provided parameters and screen size
TextStyle buildTextStyle(
  BuildContext context,
  String font,
  double size,
  FontWeight fontWeight,
  double fontHeight,
  double letterSpacing,
  Color color,
) {
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  double fontSizeInEm = screenWidthRatio * 0.97;
  return TextStyle(
    fontFamily: font,
    fontSize: size * fontSizeInEm,
    fontWeight: fontWeight,
    height: fontHeight * fontSizeInEm / screenWidthRatio,
    letterSpacing: letterSpacing * screenWidthRatio,
    color: color,
  );
}

/* Navigation Bar: navSignBttn widget */
Widget buildNavSignBttnContainer(BuildContext context, String title,
    TextStyle textStyle, Function() method) {
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin: EdgeInsets.fromLTRB(0 * screenWidthRatio, 0 * screenWidthRatio,
        10 * screenWidthRatio, 0 * screenWidthRatio),
    width: 140 * screenWidthRatio,
    height: double.infinity,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: const Color(0x3f000000),
          offset: Offset(0 * screenWidthRatio, 4 * screenWidthRatio),
          blurRadius: 7 * screenWidthRatio,
        ),
      ],
    ),
    child: Center(
      child: SizedBox(
        height: 60 * screenWidthRatio,
        width: 140 * screenWidthRatio,
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
Widget buildTextPositioned(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  String text,
  TextStyle textStyle,
) {
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * screenWidthRatio,
    top: top * screenWidthRatio,
    child: Align(
      child: SizedBox(
        width: width * screenWidthRatio,
        height: height * screenWidthRatio,
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
Widget buildTextBttnPositioned(
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
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * screenWidthRatio,
    top: top * screenWidthRatio,
    child: Align(
      child: SizedBox(
        width: width * screenWidthRatio,
        height: height * screenWidthRatio,
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
Widget buildColorPositioned(
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
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * screenWidthRatio,
    top: top * screenWidthRatio,
    child: Align(
      child: SizedBox(
        width: width * screenWidthRatio,
        height: height * screenWidthRatio,
        child: Container(
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(borderRadius * screenWidthRatio),
            color: color,
            border: Border.all(color: borderColor),
          ),
        ),
      ),
    ),
  );
}

/* blurContainer method */
Widget buildBlurPositioned(
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
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * screenWidthRatio,
    top: top * screenWidthRatio,
    child: ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: sigmaX * screenWidthRatio,
          sigmaY: sigmaY * screenWidthRatio,
        ),
        child: Align(
          child: SizedBox(
            width: width * screenWidthRatio,
            height: height * screenWidthRatio,
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
Widget buildElevatedBttnPositioned(
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
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * screenWidthRatio,
    top: top * screenWidthRatio,
    child: Align(
      child: SizedBox(
        width: width * screenWidthRatio,
        height: height * screenWidthRatio,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: bttnColor,
            side: BorderSide(
              color: borderColor,
              width: borderWidth * screenWidthRatio,
            ),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(borderRadius * screenWidthRatio),
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
Widget buildImagepositioned(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  String image,
) {
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * screenWidthRatio,
    top: top * screenWidthRatio,
    child: Align(
      child: SizedBox(
        width: width * screenWidthRatio,
        height: height * screenWidthRatio,
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
Widget buildTextFieldPositioned(
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
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * screenWidthRatio,
    top: top * screenWidthRatio,
    child: Align(
      child: SizedBox(
        width: width * screenWidthRatio,
        height: height * screenWidthRatio,
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

Widget buildImageContainer(BuildContext context, double left, double top,
    double right, double bottom, double width, double height, String image) {
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin: EdgeInsets.fromLTRB(left * screenWidthRatio, top * screenWidthRatio,
        right * screenWidthRatio, bottom * screenWidthRatio),
    width: width * screenWidthRatio,
    height: height * screenWidthRatio,
    child: Image.asset(
      image,
      // width: width * screenWidthRatio,
      // height: height * screenWidthRatio,
    ),
  );
}

// Returns a callback that navigates to the specified page when called
VoidCallback navigateToPage(BuildContext context, Widget page) {
  return () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  };
}
