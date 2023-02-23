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
          left: 82 * fem,
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
        Positioned(
          // headerUKf (29:159)
          left: 0 * fem,
          top: 0 * fem,
          child: Container(
            padding:
                EdgeInsets.fromLTRB(85 * fem, 15 * fem, 85 * fem, 15 * fem),
            width: 1440 * fem,
            height: 82 * fem,
            decoration: BoxDecoration(
              color: Color(0xff000000),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // logonavigationbarvSZ (I29:159;29:115)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 204 * fem, 0 * fem),
                  width: 102 * fem,
                  height: 52 * fem,
                  child: Image.asset(
                    'assets/page-1/images/logo-navigation-bar-f7b.png',
                    width: 102 * fem,
                    height: 52 * fem,
                  ),
                ),
                Container(
                  // autogroupghdxoem (YA9ProSw5chWWb18S2gHdX)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 16.5 * fem, 202 * fem, 8 * fem),
                  width: 525 * fem,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        // frame2VnV (I29:159;29:134)
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Container(
                          width: 525 * fem,
                          height: 27 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame1N5b (I29:159;29:133)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 19 * fem, 0 * fem),
                                height: double.infinity,
                                child: Text(
                                  'Home',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2125 * ffem / fem,
                                    letterSpacing: 1.44 * fem,
                                    color: Color(0xff2774b4),
                                  ),
                                ),
                              ),
                              Container(
                                // excercisesQny (I29:159;2:29)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 18 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Text(
                                    'Excercises',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2125 * ffem / fem,
                                      letterSpacing: 1.44 * fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // blogsrey (I29:159;2:30)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 19 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Text(
                                    'Blogs',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2125 * ffem / fem,
                                      letterSpacing: 1.44 * fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // plansXFK (I29:159;2:31)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 19 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Text(
                                    'Plans',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2125 * ffem / fem,
                                      letterSpacing: 1.44 * fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // aboutusBqf (I29:159;2:32)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 19 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Text(
                                    'About Us',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2125 * ffem / fem,
                                      letterSpacing: 1.44 * fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                // contactusejF (I29:159;2:33)
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'Contact Us',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2125 * ffem / fem,
                                    letterSpacing: 1.44 * fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle7Z5X (51:294)
                        left: 0 * fem,
                        top: 23.5 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 36 * fem,
                            height: 4 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4 * fem),
                                color: Color(0xff2774b4),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // frame32E1 (I29:159;29:156)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 6.5 * fem, 0 * fem, 6.5 * fem),
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // buttonjPK (I29:159;29:143)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 10 * fem, 0 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 106 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xff0076f9),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0 * fem, 4 * fem),
                                  blurRadius: 7 * fem,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'LOGIN',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  letterSpacing: 0.56 * fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        // buttonJKw (I29:159;29:153)
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 121 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff0076f9),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0 * fem, 4 * fem),
                                blurRadius: 7 * fem,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'SIGN UP',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                letterSpacing: 0.56 * fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
