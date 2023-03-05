// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class Plans extends StatelessWidget {
  const Plans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return desktopPlans(context);
  }
}

Widget desktopPlans(BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Container(
    // autogroupmths5Bb (YA9RAGHCBN5z4dRipzmtHs)
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 46 * fem),
    width: double.infinity,
    height: 851 * fem,
    child: Stack(
      children: [
        imageContainer(
          context,
          0,
          162,
          1440,
          688,
          plansPhoto,
        ),
        colorContanier(
          context,
          0,
          163,
          1440,
          688,
          0,
          Color(0x4c000000),
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
        plansTxt(
          context,
          85,
          0,
          142,
          60,
          'PLANS',
          txtPlansWidget(context, "Poppins", 40, Color(0xff000000)),
        ),
        blurContainer(
          context,
          512,
          8,
          25,
          25,
          414,
          580,
          Color(0x4cc5c5c5),
        ),
        blurContainer(
          context,
          86,
          216,
          25,
          25,
          414,
          580,
          Color(0x4cc5c5c5),
        ),
        plansTxt(
          context,
          613,
          201,
          212,
          97,
          '9000',
          txtPlansWidget(context, "Inter", 80, Color(0xff4098fb)),
        ),
        plansTxt(
          context,
          811,
          213.5,
          70,
          37,
          'Riyal',
          txtPlansWidget(context, "Inter", 30, Color(0xff4098fb)),
        ),
        plansTxt(
          context,
          667,
          73.5,
          103,
          37,
          '1 YEAR',
          txtPlansWidget(context, "Inter", 30, Color(0xff0076f9)),
        ),
        plansTxt(
          context,
          619,
          350.5,
          201,
          30,
          'Valid for one year',
          txtPlansWidget(context, "Inter", 30, Color(0xff0076f9)),
        ),
        plansTxt(
          context,
          644,
          140.5,
          155,
          30,
          '10% Discount',
          txtPlansWidget(context, "Inter", 24, Color(0xff000000)),
        ),
        elevatedBttn(
          context,
          594,
          433,
          250,
          60,
          Color(0xff0076f9),
          3,
          3,
          printHello,
          'SELECT',
          txtPlansWidget(context, "Inter", 20, Color(0xff000000)),
        ),
        blurContainer(
          context,
          940,
          216,
          25,
          25,
          415,
          580,
          Color(0x4cc5c5c5),
        ),
        plansTxt(
          context,
          1022,
          409,
          251,
          97,
          '16000',
          txtPlansWidget(context, "Inter", 80, Color(0xff4098fb)),
        ),
        plansTxt(
          context,
          1258,
          418.5,
          70,
          37,
          'Riyal',
          txtPlansWidget(context, "Inter", 30, Color(0xff4098fb)),
        ),
        plansTxt(
          context,
          1094,
          281.5,
          107,
          37,
          '2 YEAR',
          txtPlansWidget(context, "Inter", 30, Color(0xff0076f9)),
        ),
        plansTxt(
          context,
          1048,
          558.5,
          201,
          30,
          'Valid for two year',
          txtPlansWidget(context, "Inter", 30, Color(0xff0076f9)),
        ),
        plansTxt(
          context,
          1071,
          348.5,
          159,
          30,
          '20% Discount',
          txtPlansWidget(context, "Inter", 24, Color(0xff000000)),
        ),
        elevatedBttn(
          context,
          1023,
          641,
          250,
          60,
          Color(0xff0076f9),
          3,
          3,
          printHello,
          'SELECT',
          txtPlansWidget(context, "Inter", 20, Color(0xff000000)),
        ),
        colorContanier(
          context,
          960,
          235,
          376,
          542,
          0,
          Colors.transparent,
          Color(0xff000000),
        ),
        colorContanier(
          context,
          531,
          27,
          376,
          542,
          0,
          Colors.transparent,
          Color(0xff000000),
        ),
        plansTxt(
          context,
          187,
          409,
          211,
          97,
          '5000',
          txtPlansWidget(context, "Inter", 80, Color(0xff4098fb)),
        ),
        plansTxt(
          context,
          383,
          418.5,
          70,
          37,
          'Riyal',
          txtPlansWidget(context, "Inter", 30, Color(0xff4098fb)),
        ),
        plansTxt(
          context,
          221,
          281.5,
          142,
          37,
          '6 MONTH',
          txtPlansWidget(context, "Inter", 30, Color(0xff0076f9)),
        ),
        plansTxt(
          context,
          195,
          558.5,
          197,
          30,
          'Valid for 6 month',
          txtPlansWidget(context, "Inter", 24, Color(0xff000000)),
        ),
        plansTxt(
          context,
          224,
          348.5,
          143,
          30,
          '5% Discount',
          txtPlansWidget(context, "Inter", 24, Color(0xff000000)),
        ),
        elevatedBttn(
          context,
          168,
          641,
          250,
          60,
          Color(0xff0076f9),
          3,
          3,
          printHello,
          'SELECT',
          txtPlansWidget(context, "Inter", 20, Color(0xff000000)),
        ),
        colorContanier(
          context,
          105,
          235,
          376,
          542,
          0,
          Colors.transparent,
          Color(0xff000000),
        ),
      ],
    ),
  );
}

Widget plansTxt(
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

// windget blurContainer takes context, left,sigmaX, sigmaY, top, width, height, color as parameters
Widget blurContainer(
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

// widget elevatedBttn takes context, left, top, width, height, elevatedBttnColor, elevatedBttnWidth, elevatedBttnBorderRadius, onPressed, text, textStyle as parameters
Widget elevatedBttn(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  Color bttnColor,
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
              color: Color(0xff000000),
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

// widget imageContainer takes context, left, top, width, height, image as parameters
Widget imageContainer(
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

// method to print hello
void printHello() {
  print('Hello');
}
