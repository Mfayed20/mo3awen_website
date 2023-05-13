import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mo3awen_website/pages/mainpages/about_us_page.dart';
import 'package:mo3awen_website/pages/mainpages/contact_us_page.dart';
import 'package:mo3awen_website/pages/mainpages/exercise_page.dart';
import 'package:mo3awen_website/pages/mainpages/home_page.dart';
import 'package:mo3awen_website/pages/mainpages/plans_page.dart';
import 'package:mo3awen_website/utils/constants.dart';
import 'package:mo3awen_website/utils/styles.dart';

import '../../pages/profile_page.dart';
import '../../pages/signIn/sign_in_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return navBarTabletDesktop(context);
  }
}

Widget navBarTabletDesktop(BuildContext context) {
  TextStyle navItemStyle = buildTextStyle(
    context,
    "Inter",
    16,
    FontWeight.w500,
    1.2125,
    1.44,
    const Color(0xffffffff),
  );

  TextStyle navBttnStyle = buildTextStyle(
    context,
    "Inter",
    14,
    FontWeight.w400,
    1.2125,
    0.56,
    const Color(0xffffffff),
  );

  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;

  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      double spacerWidth = constraints.maxWidth >= 1000 ? 170 : 8;
      double navItemSpacing = constraints.maxWidth >= 1000 ? 16.0 : 8.0;

      return Container(
        width: double.infinity,
        height: 60 * screenWidthRatio,
        decoration: const BoxDecoration(
          color: Color(0xff000000),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildLogo(screenWidthRatio, context),
            SizedBox(width: spacerWidth),
            buildNavItems(context, navItemStyle, navItemSpacing),
            SizedBox(width: spacerWidth),
            buildSignInUpButton(context, navBttnStyle, screenWidthRatio),
          ],
        ),
      );
    },
  );
}

Widget buildLogo(double screenWidthRatio, BuildContext context) {
  return Container(
    margin: EdgeInsets.all(0 * screenWidthRatio),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
      child: Image.asset(
        navBarLogo,
        width: 102 * screenWidthRatio,
        height: 52 * screenWidthRatio,
      ),
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
    navItemPages.add(const ProfilePage());
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
    BuildContext context, TextStyle navBttnStyle, double screenWidthRatio) {
  return SizedBox(
    height: 35 * screenWidthRatio,
    child: (FirebaseAuth.instance.currentUser == null)
        ? buildNavSignBttnContainer(context, "Sign In/Up", navBttnStyle,
            navigateToPage(context, const SignInPage()))
        :
        // If the user is logged in, show the "Sign Out" button
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5 * screenWidthRatio),
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
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  EdgeInsets margin = EdgeInsets.fromLTRB(0 * screenWidthRatio,
      0 * screenWidthRatio, 3 * screenWidthRatio, 0 * screenWidthRatio);

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
