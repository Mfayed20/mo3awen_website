import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mo3awen_website/pages/sign_in_page.dart';
import 'package:mo3awen_website/pages/about_us_page.dart';
import 'package:mo3awen_website/pages/contact_us_page.dart';
import 'package:mo3awen_website/pages/exercise_page.dart';
import 'package:mo3awen_website/pages/home_page.dart';
import 'package:mo3awen_website/pages/plans_page.dart';
import 'package:mo3awen_website/utils/constants.dart';
import 'package:mo3awen_website/utils/styles.dart';

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

  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      double spacerWidth = constraints.maxWidth >= 1000 ? 170 : 8;
      double navItemSpacing = constraints.maxWidth >= 1000 ? 16.0 : 8.0;

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
            buildLogo(fem),
            SizedBox(width: spacerWidth),
            buildNavItems(context, navItemStyle, navItemSpacing),
            SizedBox(width: spacerWidth),
            buildSignInUpButton(context, navBttnStyle, fem),
          ],
        ),
      );
    },
  );
}

Widget buildLogo(double fem) {
  return Container(
    margin: EdgeInsets.all(0 * fem),
    child: Image.asset(
      navBarLogo,
      width: 102 * fem,
      height: 52 * fem,
    ),
  );
}

Widget buildNavItems(
    BuildContext context, TextStyle navItemStyle, double navItemSpacing) {
  List<String> navItemLabels = [
    "Home",
    "Exercises",
    "Plans",
    "About",
    "Contact",
  ];

  List<Widget> navItemPages = [
    const HomePage(),
    const ExercisePage(),
    const PlansPage(),
    const AboutUsPage(),
    const ContactUsPage(),
  ];

  if (FirebaseAuth.instance.currentUser != null) {
    navItemLabels.add("Profile");
    navItemPages.add(const ContactUsPage());
  }

  return Align(
    alignment: Alignment.center,
    child: Wrap(
      spacing: navItemSpacing,
      runSpacing: navItemSpacing,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        for (int i = 0; i < navItemLabels.length; i++)
          navItemContainer(context, navItemLabels[i], navItemStyle,
              navigateToPage(context, navItemPages[i])),
      ],
    ),
  );
}

Widget buildSignInUpButton(
    BuildContext context, TextStyle navBttnStyle, double fem) {
  return SizedBox(
    height: 35 * fem,
    child: (FirebaseAuth.instance.currentUser == null)
        ? navSignBttnContainer(context, "Sign In/Up", navBttnStyle,
            navigateToPage(context, const SignInPage()))
        :
        // If the user is logged in, show the "Sign Out" button
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5 * fem),
              ),
            ),
            onPressed: () {
              signOut();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: Text(
              "Sign Out",
              style: navBttnStyle,
            ),
          ),
  );
}

// Signs out the user from Firebase authentication
Future<void> signOut() async {
  try {
    await FirebaseAuth.instance.signOut();
    if (kDebugMode) {
      print("Signed Out Successfully");
    }
  } catch (error) {
    if (kDebugMode) {
      print("Failed to sign out: $error");
    }
  }
}

Widget navItemContainer(BuildContext context, String title, TextStyle textStyle,
    Function() method) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  EdgeInsets margin = EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 0 * fem);

  return Container(
    margin: margin,
    child: TextButton(
      onPressed: method,
      child: Text(
        title,
        style: textStyle,
      ),
    ),
  );
}
