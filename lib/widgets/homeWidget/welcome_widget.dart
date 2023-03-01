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
          82 * fem,
          313 * fem,
          605 * fem,
          94 * fem,
          'NO LONGER IS THERE A NEED TO\n\nDO BORING EXERCISES',
          34 * ffem,
          FontWeight.w700,
          0.68 * fem,
          1.3799999461 * ffem / fem,
          Color(0xff000000),
        ),
        Positioned(
          // rectangle12tS1 (2:87)
          left: 85 * fem,
          top: 552 * fem,
          child: Align(
            child: SizedBox(
              width: 583 * fem,
              height: 54 * fem,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
        ),
        welcomeText(
            114 * fem,
            562 * fem,
            523 * fem,
            34 * fem,
            'COMBING GAMING WITH EXERCISING',
            28 * ffem,
            FontWeight.w800,
            1.2125 * ffem / fem,
            0,
            Color(0xff000000)),
        elevatedButton(
            235 * fem,
            663 * fem,
            265 * fem,
            60 * fem,
            Color(0xff0076f9),
            'BROWSE EXERCISES',
            25 * ffem,
            FontWeight.w800,
            1.2125 * ffem / fem,
            0,
            Color(0xffffffff)),
        welcomeText(
            84 * fem,
            442 * fem,
            582 * fem,
            105 * fem,
            'TIME FOR FUN',
            86 * ffem,
            FontWeight.w900,
            1.2125 * ffem / fem,
            -1.72 * fem,
            Color(0xff000000)),
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
    Color color) {
  return Positioned(
    left: left,
    top: top,
    child: Align(
      child: SizedBox(
        width: width,
        height: height,
        child: Text(
          text,
          style: safeGoogleFont(
            'Poppins',
            fontSize: fontSize,
            fontWeight: fontWeight,
            height: height2,
            letterSpacing: letterSpacing,
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
    Color color2) {
  return Positioned(
    left: left,
    top: top,
    child: Align(
      child: SizedBox(
        width: width,
        height: height,
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
              fontSize: fontSize,
              fontWeight: fontWeight,
              height: height2,
              letterSpacing: letterSpacing,
              color: color2,
            ),
          ),
        ),
      ),
    ),
  );
}
