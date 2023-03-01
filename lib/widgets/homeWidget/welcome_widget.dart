// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class MainPart extends StatelessWidget {
  const MainPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return mainTabletDesktop(context);
  }
}

Widget mainTabletDesktop(BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 87 * fem),
    width: 1441 * fem,
    height: 844 * fem,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          welcomeHomePage,
        ),
      ),
    ),
    child: Stack(
      children: [
        welcomeText(
          82,
          313,
          605,
          94,
          'NO LONGER IS THERE A NEED TO\n\nDO BORING EXERCISES',
          34,
          FontWeight.w700,
          0.68,
          1.3799999461,
          Color(0xff000000),
          context,
        ),
        Positioned(
          // rectangle12tS1 (2:87)
          left: 85,
          top: 552,
          child: SizedBox(
            width: 573,
            height: 54,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12 * fem),
                color: Color(0xffffffff),
              ),
            ),
          ),
        ),
        welcomeText(114, 562, 523, 34, 'COMBING GAMING WITH EXERCISING', 28,
            FontWeight.w800, 1.2125, 0, Color(0xff000000), context),
        elevatedButton(235, 663, 265, 60, Color(0xff0076f9), 'BROWSE EXERCISES',
            25, FontWeight.w800, 1.2125, 0, Color(0xffffffff), context),
        welcomeText(84, 442, 582, 105, 'TIME FOR FUN', 86, FontWeight.w900,
            1.2125 * ffem, -1.72, Color(0xff000000), context),
      ],
    ),
  );
}

// widget welcomeText that takes left, top, width, height, text, fontSize, fontWeight, height, letterSpacing, color
Widget welcomeText(
    double left,
    double top,
    double width,
    double height,
    String text,
    double fontSize,
    FontWeight fontWeight,
    double height2,
    double letterSpacing,
    Color color,
    BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: Align(
      child: SizedBox(
        width: width * fem,
        height: height * fem,
        child: Text(
          text,
          style: safeGoogleFont(
            'Poppins',
            fontSize: fontSize * ffem,
            fontWeight: fontWeight,
            height: height2 * ffem / fem,
            letterSpacing: letterSpacing * fem,
            color: color,
          ),
        ),
      ),
    ),
  );
}

// widget elevatedButton that takes left, top, width, height, color, text, fontSize, fontWeight, height, letterSpacing, color
Widget elevatedButton(
    double left,
    double top,
    double width,
    double height,
    Color color,
    String text,
    double fontSize,
    FontWeight fontWeight,
    double height2,
    double letterSpacing,
    Color color2,
    BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: Align(
      child: SizedBox(
        width: width * fem,
        height: height * fem,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: EdgeInsets.zero,
          ),
          child: Text(
            text,
            style: safeGoogleFont(
              'Poppins',
              fontSize: fontSize * ffem,
              fontWeight: fontWeight,
              height: height2 * ffem / fem,
              letterSpacing: letterSpacing * fem,
              color: color2,
            ),
          ),
        ),
      ),
    ),
  );
}
