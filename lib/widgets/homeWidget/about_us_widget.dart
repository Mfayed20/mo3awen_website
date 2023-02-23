// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
  double ffem = fem * 0.97;
  return Container(
    // physicaltherapyhomepageD8E (1:27)
    width: double.infinity,
    height: 841 * fem,
    decoration: BoxDecoration(
      color: Color(0xffffffff),
    ),
    child: Stack(
      children: [
        Positioned(
          // rectangle14Kaa (6:8)
          left: 0 * fem,
          top: 141 * fem,
          child: Align(
            child: SizedBox(
              width: 1441 * fem,
              height: 580 * fem,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff0076f9),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle13CPU (6:9)
          left: 85 * fem,
          top: 72 * fem,
          child: Align(
            child: SizedBox(
              width: 100 * fem,
              height: 9 * fem,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4 * fem),
                  color: Color(0xff0076f9),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle21tGJ (6:10)
          left: 761 * fem,
          top: 1 * fem,
          child: Align(
            child: SizedBox(
              width: 606 * fem,
              height: 612 * fem,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff000000)),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // aboutusPir (6:11)
          left: 85 * fem,
          top: 0 * fem,
          child: Align(
            child: SizedBox(
              width: 222 * fem,
              height: 60 * fem,
              child: Text(
                'ABOUT US',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // themaingoalofmo3awenistohelpyo (6:12)
          left: 85 * fem,
          top: 216 * fem,
          child: Align(
            child: SizedBox(
              width: 554 * fem,
              height: 216 * fem,
              child: Text(
                'The main goal of Mo3awen is to help you do your physical therapy. It adds a fun element to the dull routine of working out. It will also keep the patients entertained and committed to doing their exercises.',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle152QS (6:13)
          left: 789 * fem,
          top: 29 * fem,
          child: Align(
            child: SizedBox(
              width: 550 * fem,
              height: 556 * fem,
              child: Image.asset(
                'assets/page-1/images/rectangle-15.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
