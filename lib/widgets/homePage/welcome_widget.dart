import 'package:flutter/material.dart';
import '../../pages/mainpages/exercise_page.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class WelcomeHP extends StatelessWidget {
  const WelcomeHP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return welcomeWidget(context);
  }
}

Widget welcomeWidget(BuildContext context) {
  // Create text styles using buildTextStyle method from styles.dart
  TextStyle firstTxtStyle = buildTextStyle(
    context,
    "Poppins",
    34,
    FontWeight.w700,
    1.3,
    0.68,
    const Color(0xff000000),
  );
  TextStyle mainTextStyle = buildTextStyle(
    context,
    "Inter",
    86,
    FontWeight.w900,
    1.2,
    -1.7,
    const Color(0xff000000),
  );
  TextStyle thirdTxtStyle = buildTextStyle(
    context,
    "Inter",
    28,
    FontWeight.w800,
    1.2,
    0,
    const Color(0xff000000),
  );
  TextStyle bttntxtStyle = buildTextStyle(
    context,
    "Inter",
    18,
    FontWeight.w600,
    1.2,
    0,
    const Color(0xff000000),
  );

  // Define the base width for scaling elements
  // Calculate the factor for scaling elements based on the screen width
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;

  // Return a container with background image and content
  return Container(
    width: double.infinity,
    height:
        750 * screenWidthRatio, // scale the height based on the screen width
    // Add the background image
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(welcomeHomePage),
        fit: BoxFit.cover,
      ),
    ),
    // Align the content to the bottom left
    child: Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(
            left: 70 * screenWidthRatio, top: 250 * screenWidthRatio),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add the first text with the created style
            Text("NO LONGER IS THERE A NEED\nTO DO BORING EXERCISES",
                style: firstTxtStyle),
            SizedBox(height: 25 * screenWidthRatio),
            // Add the main text with the created style
            Text("TIME FOR FUN", style: mainTextStyle),
            SizedBox(height: 10 * screenWidthRatio),
            Container(
              // Add a white container for the third text
              width: 523 * screenWidthRatio,
              height: 54 * screenWidthRatio,
              padding: EdgeInsets.fromLTRB(
                  29 * screenWidthRatio, 12 * screenWidthRatio, 0, 0),
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(3.0),
              ),
              // Add the third text with the created style
              child: Text("COMBINING GAMING WITH EXERCISING",
                  style: thirdTxtStyle),
            ),
            SizedBox(height: 35 * screenWidthRatio),
            Padding(
              padding: EdgeInsets.only(left: 150 * screenWidthRatio),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to ExercisePage when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExercisePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 29 * screenWidthRatio,
                      vertical: 12 * screenWidthRatio),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xff0076f9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
                // Add the button text with the created style
                child: Text("BROWSE EXERCISES", style: bttntxtStyle),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
