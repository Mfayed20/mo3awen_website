// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../utils/constants.dart';
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
  return Container(
    padding: EdgeInsets.fromLTRB(85 * fem, 15 * fem, 85 * fem, 15 * fem),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xff000000),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 204 * fem, 0 * fem),
          width: 102 * fem,
          height: 52 * fem,
          child: Image.asset(
            navBarLogo,
            width: 102 * fem,
            height: 52 * fem,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0 * fem, 8 * fem, 190 * fem, 0 * fem),
          height: 27 * fem,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              navItem("Home", printHello, context),
              navItem("Excercises", printHello, context),
              navItem("Plans", printHello, context),
              navItem("About Us", printHello, context),
              navItem("Contact Us", printHello, context),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
          height: 39 * fem,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              navSignBttn("SIGN UP", printHello, context),
              navSignBttn("LOGIN", printHello, context),
            ],
          ),
        ),
      ],
    ),
  );
}

// widget navItem that takes String and method as parameters
Widget navItem(String title, Function() method, BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 0 * fem),
    child: TextButton(
      onPressed: method,
      child: Text(
        title,
        style: safeGoogleFont(
          'Inter',
          fontSize: 16 * ffem,
          fontWeight: FontWeight.w500,
          height: 1.2125 * ffem / fem,
          letterSpacing: 1.44 * fem,
          color: Color(0xffffffff),
        ),
      ),
    ),
  );
}

// navSignBttn
Widget navSignBttn(String title, Function() method, BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Container(
    // buttonwV4 (I1:27;29:143)
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 0 * fem),
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
      child: ElevatedButton(
        onPressed: method,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: safeGoogleFont(
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
  );
}

// method to print hello
void printHello() {
  print('Hello');
}
