// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
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
    // autogroupkiyvB6M (YA9PAQSaT4KRkMYPh8kiYV)
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 87 * fem),
    width: 1441 * fem,
    height: 844 * fem,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          'assets/page-1/images/hero-section-image-bg.png',
        ),
      ),
    ),
    child: Stack(
      children: [
        Positioned(
          // nolongeristhereaneedtodoboring (2:86)
          left: 0 * fem,
          top: 313 * fem,
          child: Align(
            child: SizedBox(
              width: 605 * fem,
              height: 94 * fem,
              child: Text(
                'NO LONGER IS THERE A NEED TO DO\nBORING EXERCISES',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 34 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.3799999461 * ffem / fem,
                  letterSpacing: 0.68 * fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
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
        Positioned(
          // combinggamingwithexercisingMqP (2:88)
          left: 114 * fem,
          top: 562 * fem,
          child: Align(
            child: SizedBox(
              width: 523 * fem,
              height: 34 * fem,
              child: Text(
                'COMBING GAMING WITH EXERCISING',
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 28 * ffem,
                  fontWeight: FontWeight.w800,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectanglebuttonBpR (2:89)
          left: 235 * fem,
          top: 663 * fem,
          child: Align(
            child: SizedBox(
              width: 265 * fem,
              height: 60 * fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff000000)),
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
        ),
        Positioned(
          // browseexercises12m (2:90)
          left: 277 * fem,
          top: 682 * fem,
          child: Align(
            child: SizedBox(
              width: 181 * fem,
              height: 22 * fem,
              child: Text(
                'BROWSE EXERCISES',
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 18 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // timeforfunERK (2:91)
          left: 84 * fem,
          top: 442 * fem,
          child: Align(
            child: SizedBox(
              width: 582 * fem,
              height: 105 * fem,
              child: Text(
                'TIME FOR FUN',
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 86 * ffem,
                  fontWeight: FontWeight.w900,
                  height: 1.2125 * ffem / fem,
                  letterSpacing: -1.72 * fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
