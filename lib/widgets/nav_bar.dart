import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/styles.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return navBarTabletDesktop(context);
  }
}

Widget navBarTabletDesktop(BuildContext context) {
  TextStyle navItemStyle = textStyle(
    context,
    "Inter",
    16,
    FontWeight.w500,
    1.2125,
    1.44,
    const Color(0xffffffff),
  );
  TextStyle navBttnStyle = textStyle(
    context,
    "Inter",
    14,
    FontWeight.w400,
    1.2125,
    0.56,
    const Color(0xffffffff),
  );

  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    width: double.infinity,
    height: 60 * fem,
    decoration: const BoxDecoration(
      color: Color(0xff000000),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        /* Logo */
        Container(
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
          child: Image.asset(
            navBarLogo,
            width: 102 * fem,
            height: 52 * fem,
          ),
        ),
        /* empty container */
        Container(
          width: 170 * fem,
        ),
        /* Navigation items */
        Row(
          children: [
            navItem(context, "Home", navItemStyle, printHello),
            navItem(context, "Exercises", navItemStyle, printHello),
            navItem(context, "Plans", navItemStyle, printHello),
            navItem(context, "About", navItemStyle, printHello),
            navItem(context, "Contact", navItemStyle, printHello),
          ],
        ),
        /* empty container */
        Container(
          width: 150 * fem,
        ),
        /* Sign In/Up button */
        SizedBox(
            height: 35 * fem,
            child:
                navSignBttn(context, "Sign In/Up", navBttnStyle, printHello)),
      ],
    ),
  );
}

// method to print hello
void printHello() {
  print('Hello');
}
