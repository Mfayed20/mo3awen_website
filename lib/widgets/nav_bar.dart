// import
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../utils/constants.dart';
import '../utils/styles.dart';
import '../utils/colors.dart';

// navigation bar
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: navBarMobile(),
      desktop: navBarTabletDesktop(),
    );
  }
}

// mobile navigation bar, logo and text
Widget navBarMobile() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    height: 80,
    color: Colors.black,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.menu),
        navLogo(),
        navBttn('Sign In/Up'),
      ],
    ),
  );
}

// tablet and desktop navigation bar
Widget navBarTabletDesktop() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    height: 80,
    color: Colors.black,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        navLogo(),
        Row(
          children: [
            navItem('Home'),
            navItem('About'),
            navItem('Services'),
            navItem('Contact'),
            navBttn('Sign In/Up')
          ],
        ),
      ],
    ),
  );
}

// nav logo
Widget navLogo() {
  return Row(
    children: const [
      DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(logo),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Text(
        'Mo3awen',
        style: WebTextStyles.navTitle,
      ),
    ],
  );
}

// navItem clickable text
Widget navItem(String title) {
  return TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Text(title),
  );
}

// navBttn
Widget navBttn(String title) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: WebColors.primaryColor,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Text(title),
  );
}
