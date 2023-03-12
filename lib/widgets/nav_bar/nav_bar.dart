import 'package:flutter/material.dart';
import 'package:mo3awen_website/pages/sign_in_page.dart';
import '../../pages/about_us_page.dart';
import '../../pages/contact_us_page.dart';
import '../../pages/exercise_page.dart';
import '../../pages/home_page.dart';
import '../../pages/plans_page.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

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
            navItemContainer(context, "Home", navItemStyle,
                navigateToPage(context, const HomePage())),
            navItemContainer(context, "Exercises", navItemStyle,
                navigateToPage(context, const ExercisePage())),
            navItemContainer(context, "Plans", navItemStyle,
                navigateToPage(context, const PlansPage())),
            navItemContainer(context, "About", navItemStyle,
                navigateToPage(context, const AboutUsPage())),
            navItemContainer(context, "Contact", navItemStyle,
                navigateToPage(context, const ContactUsPage())),
          ],
        ),
        /* empty container */
        Container(
          width: 150 * fem,
        ),
        /* Sign In/Up button */
        SizedBox(
            height: 35 * fem,
            child: navSignBttnContainer(context, "Sign In/Up", navBttnStyle,
                navigateToPage(context, const SignInPage()))),
      ],
    ),
  );
}
