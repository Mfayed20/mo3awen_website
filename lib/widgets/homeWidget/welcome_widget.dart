// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../utils/colors.dart';
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
    // physicaltherapyhomepageyF8 (1:27)
    width: double.infinity,
    height: 900 * fem,
    decoration: BoxDecoration(
      color: Color(0xffffffff),
    ),
    child: Stack(
      children: [
        Positioned(
          // herosectionimageDfG (1:31)
          left: 0 * fem,
          top: 0 * fem,
          child: Align(
            child: SizedBox(
              width: 1440 * fem,
              height: 836 * fem,
              child: Image.asset(
                "assets/images/homePhoto.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          // nolongeristhereaneedtodoboring (1:88)
          left: 82 * fem,
          top: 313 * fem,
          child: Align(
            child: SizedBox(
              width: 605 * fem,
              height: 94 * fem,
              child: Text(
                'NO LONGER IS THERE A NEED TO DO BORING EXERCISES',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle12954 (1:89)
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
        Positioned(
          // combinggamingwithexercisingFNz (1:90)
          left: 114 * fem,
          top: 562 * fem,
          child: Align(
            child: SizedBox(
              width: 523 * fem,
              height: 34 * fem,
              child: Text(
                'COMBING GAMING WITH EXERCISING',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // rectanglebuttonk4r (1:91)
          left: 235 * fem,
          top: 663 * fem,
          child: Align(
            child: SizedBox(
              width: 265 * fem,
              height: 60 * fem,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Color(0xff0076f9),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // browseexercisesduL (1:92)
          left: 277 * fem,
          top: 682 * fem,
          child: Align(
            child: SizedBox(
              width: 181 * fem,
              height: 22 * fem,
              child: Text(
                'BROWSE EXERCISES',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // timeforfunZ2J (1:93)
          left: 84 * fem,
          top: 442 * fem,
          child: Align(
            child: SizedBox(
              width: 582 * fem,
              height: 105 * fem,
              child: Text(
                'TIME FOR FUN',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // nolongeristhereaneedtodoboring (1:181)
          left: 82 * fem,
          top: 313 * fem,
          child: Align(
            child: SizedBox(
              width: 605 * fem,
              height: 94 * fem,
              child: Text(
                'NO LONGER IS THERE A NEED TO DO\nBORING EXERCISES',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle13jqt (1:182)
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
        Positioned(
          // combinggamingwithexercisingfjY (1:183)
          left: 114 * fem,
          top: 562 * fem,
          child: Align(
            child: SizedBox(
              width: 523 * fem,
              height: 34 * fem,
              child: Text(
                'COMBING GAMING WITH EXERCISING',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // rectanglebuttona5p (1:184)
          left: 235 * fem,
          top: 663 * fem,
          child: Align(
            child: SizedBox(
              width: 265 * fem,
              height: 60 * fem,
              child: Container(
                decoration: BoxDecoration(
                  // border color black
                  border: Border.all(color: Colors.black),
                  color: Color(0xff0076f9),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // browseexercisessqc (1:185)
          left: 277 * fem,
          top: 682 * fem,
          child: Align(
            child: SizedBox(
              width: 181 * fem,
              height: 22 * fem,
              child: Text(
                'BROWSE EXERCISES',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // timeforfunmg6 (1:186)
          left: 84 * fem,
          top: 442 * fem,
          child: Align(
            child: SizedBox(
              width: 582 * fem,
              height: 105 * fem,
              child: Text(
                'TIME FOR FUN',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
