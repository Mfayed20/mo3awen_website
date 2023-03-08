// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/styles.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return desktopView(context);
  }
}

Widget desktopView(BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Container(
      // footer26Z (2:38)
      padding: EdgeInsets.fromLTRB(82 * fem, 49 * fem, 127 * fem, 46 * fem),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffe2e2e2),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  footerimages(15, 0, 0, 0, 100, 100, footerlogoimg, context),
                  Row(
                    children: [
                      footerimages(0, 0, 2.64, 0, 18.82, 17.62,
                          footerlogoimglatterM, context),
                      footerimages(0, 0, 1.44, 0, 18.15, 18.29,
                          footerlogoimglatterO, context),
                      footerimages(0, 0, 1.18, 0.02, 12.63, 18.34,
                          footerlogoimglatter_3, context),
                      footerimages(0, 0, 0.41, 0, 15.91, 17.62,
                          footerlogoimglatterA, context),
                      footerimages(0, 0, 1.92, 0.02, 23.96, 17.67,
                          footerlogoimglatterW, context),
                      footerimages(0, 0, 2.64, 0, 11.31, 17.62,
                          footerlogoimglatterE, context),
                      footerimages(
                          0, 0, 0, 0, 14, 16.62, footerlogoimglatterN, context),
                    ],
                  ),
                  footerboldtext(
                      0,
                      15,
                      70,
                      0,
                      "The main goal of Mo3awen is to \nhelp you do your physical therapy.\nIt adds a fun element to the dull \nroutine of working out.",
                      16,
                      FontWeight.w400,
                      context),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  footerboldtext(15, 0, 170, 14, "Quick Links", 16,
                      FontWeight.w700, context),
                  footerbluelane(context),
                  footerNavItem(0, 0, 0, 0, "Excercises", 16, FontWeight.w400,
                      printHello, context),
                  footerNavItem(0, 0, 0, 0, "plans", 16, FontWeight.w400,
                      printHello, context),
                  footerNavItem(0, 0, 0, 0, "About us", 16, FontWeight.w400,
                      printHello, context),
                  footerNavItem(0, 0, 0, 0, "Contact us", 16, FontWeight.w400,
                      printHello, context),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  footerboldtext(
                      15, 0, 170, 14, "Services", 16, FontWeight.w700, context),
                  footerbluelane(context),
                  footerNavItem(0, 0, 0, 0, "Excercises", 16, FontWeight.w400,
                      printHello, context),
                  footerNavItem(0, 0, 0, 0, "plans", 16, FontWeight.w400,
                      printHello, context),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  footerboldtext(15, 0, 100, 14, "Get In Touch", 16,
                      FontWeight.w700, context),
                  footerbluelane(context),
                  Row(
                    children: [
                      footerimages(
                          0, 0, 10, 0, 20, 20, footerphoneimg, context),
                      footerboldtext(0, 0, 0, 0, "010 000 0000", 16,
                          FontWeight.w400, context),
                    ],
                  ),
                  Row(
                    children: [
                      footerimages(
                          0, 10, 10, 0, 20, 20, footermailimg, context),
                      footerboldtext(
                          0,
                          10,
                          0,
                          0,
                          "updownstudiosgames@gmail.com",
                          16,
                          FontWeight.w400,
                          context),
                    ],
                  ),
                  Row(
                    children: [
                      footerimages(
                          0, 10, 10, 0, 20, 20, footerarrowimg, context),
                      footerboldtext(
                          0,
                          10,
                          0,
                          0,
                          "Alfaisal university, Riyadh, Saudi Arabia",
                          16,
                          FontWeight.w400,
                          context),
                    ],
                  ),
                  Row(
                    children: [
                      footerNavImages(35, 20, 0, 0, 70, 70, footerinstaimg,
                          printHello, context),
                      footerNavImages(25, 20, 0, 0, 70, 70, footertwitimg,
                          printHello, context),
                    ],
                  ),
                  footerboldtext(30, 4, 0, 0, "UPDOWN STUDIO", 18,
                      FontWeight.w500, context),
                ],
              ),
            ],
          ),
          footerboldtext(0, 25, 0, 0, "© 2022 MO3AWEN. All rights reserved.",
              14, FontWeight.w400, context),
        ],
      ));
}

// a widget that takes 6 integers and 1 string and returns a container
Widget footerimages(double left, double top, double right, double bottom,
    double width, double height, String image, BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin:
        EdgeInsets.fromLTRB(left * fem, top * fem, right * fem, bottom * fem),
    width: width * fem,
    height: height * fem,
    child: Image.asset(
      image,
      width: width * fem,
      height: height * fem,
    ),
  );
}

Widget footerNavImages(
    double left,
    double top,
    double right,
    double bottom,
    double width,
    double height,
    String image,
    Function() method,
    BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin:
        EdgeInsets.fromLTRB(left * fem, top * fem, right * fem, bottom * fem),
    width: width * fem,
    height: height * fem,
    child: IconButton(
      onPressed: method,
      icon: Image.asset(
        image,
        width: width * fem,
        height: height * fem,
      ),
    ),
  );
}

// a widget call footerboldtext that takes 4 doubles and 1 string and returns a container
Widget footerboldtext(double left, double top, double right, double bottom,
    String text, double fontSize, FontWeight fontWeight, BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin:
        EdgeInsets.fromLTRB(left * fem, top * fem, right * fem, bottom * fem),
    child: Text(text, style: footerBoldText(fontSize, fontWeight, context)),
  );
}

Widget footerNavItem(
    double left,
    double top,
    double right,
    double bottom,
    String text,
    double fontSize,
    FontWeight fontWeight,
    Function() method,
    BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    height: fem * 30,
    margin:
        EdgeInsets.fromLTRB(left * fem, top * fem, right * fem, bottom * fem),
    child: TextButton(
        style: TextButton.styleFrom(
          alignment: Alignment.centerLeft,
        ),
        onPressed: method,
        child:
            Text(text, style: footerBoldText(fontSize, fontWeight, context))),
  );
}

// a widget called footerbluelane that returns a container
Widget footerbluelane(BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0, 10 * fem),
    width: 60 * fem,
    height: 5 * fem,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4 * fem),
      color: Color(0xff2774b4),
    ),
  );
}

void printHello() {
  print('Hello');
}
