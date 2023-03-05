// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return desktopView(context);
  }
}

Widget desktopView(BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 95 * fem),
    width: 1441 * fem,
    height: 721 * fem,
    child: Stack(
      children: [
        colorContanier(
          context,
          0,
          141,
          1441,
          580,
          0,
          Color(0xff0076f9),
          Colors.transparent,
        ),
        colorContanier(
          context,
          85,
          72,
          100,
          9,
          4,
          Color(0xff0076f9),
          Colors.transparent,
        ),
        colorContanier(
          context,
          761,
          1,
          606,
          612,
          0,
          Colors.transparent,
          Color(0xff000000),
        ),
        aboutUs(context, 85, 0, 222, 60, 'ABOUT US', headerTxtStyle(context)),
        aboutUs(
            context,
            85,
            216,
            554,
            216,
            'The main goal of Mo3awen is to help you do your physical therapy. It adds a fun element to the dull routine of working out. It will also keep the patients entertained and committed to doing their exercises.',
            normalTxtStyle(context)),
        Positioned(
          left: 789 * fem,
          top: 29 * fem,
          child: Align(
            child: SizedBox(
              width: 550 * fem,
              height: 556 * fem,
              child: Image.asset(
                aboutUsPhoto,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

// widget aboutUs that takes left, top, width, height, text as parameters and returns position widget
Widget aboutUs(
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
          style: textStyle,
        ),
      ),
    ),
  );
}

// widget blueContanier that takes left, top, width, height, text as parameters and returns position widget
Widget colorContanier(
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
