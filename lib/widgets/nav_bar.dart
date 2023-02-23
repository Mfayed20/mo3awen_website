// import
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../utils/styles.dart';

// navigation bar
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return navBarTabletDesktop(context);
  }
}

Widget navBarTabletDesktop(BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Container(
    // headerYP4 (1:27)
    padding: EdgeInsets.fromLTRB(85 * fem, 15 * fem, 85 * fem, 15 * fem),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xff000000),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // logonavigationbar1XY (I1:27;29:115)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 204 * fem, 0 * fem),
          width: 102 * fem,
          height: 52 * fem,
          child: Image.asset(
            'assets/page-1/images/logo-navigation-bar-f7b.png',
            width: 102 * fem,
            height: 52 * fem,
          ),
        ),
        Container(
          // frame2K2S (I1:27;29:134)
          margin: EdgeInsets.fromLTRB(0 * fem, 8 * fem, 202 * fem, 0 * fem),
          height: 27 * fem,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // frame1qmU (I1:27;29:133)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 19 * fem, 0 * fem),
                height: double.infinity,
                child: TextButton(
                  onPressed: () => {},
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
              ),
              Container(
                // excercisesQxz (I1:27;2:29)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 18 * fem, 0 * fem),
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
              Container(
                // plansDQe (I1:27;2:31)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 19 * fem, 0 * fem),
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
              Container(
                // aboutusjNz (I1:27;2:32)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 19 * fem, 0 * fem),
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
              Text(
                // contactusrCi (I1:27;2:33)
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
            ],
          ),
        ),
        Container(
          // frame3bRC (I1:27;29:156)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
          height: 39 * fem,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // buttonwV4 (I1:27;29:143)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 0 * fem),
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
              Container(
                // buttonnka (I1:27;29:153)
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
            ],
          ),
        ),
      ],
    ),
  );
}
