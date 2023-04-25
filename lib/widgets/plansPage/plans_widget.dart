// importing necessary packages and files
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class PlansWelcome extends StatelessWidget {
  const PlansWelcome({Key? key}) : super(key: key);

  // build method
  @override
  Widget build(BuildContext context) {
    return plansWidget(context); // calling the desktopPlans method
  }
}

// Widget for desktop layout
Widget plansWidget(BuildContext context) {
  // double baseWidth = 1440;
  // double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return SingleChildScrollView(
    child: Column(
      mainAxisSize:
          MainAxisSize.min, // To keep the Column as small as possible.
      children: [
        // Container with a background image and Text
        Container(
          height: MediaQuery.of(context).size.width * 0.4,
          width: double.infinity,
          // width: 1125 * screenWidthRatio,
          // height: 562 * screenWidthRatio,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(plansbgimg),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Choose the Plan for You',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ).adaptiveText(context,
                  isTitle:
                      true), // Calling the adaptiveText extension method for responsive font size
            ),
          ),
        ),
        // Container with a Text
        Container(
          color: Colors.blue,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: double.infinity,
          child: Center(
            child: const Text(
              'We offer coaching, consulting, and support for your personal and professional development',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ).adaptiveText(
                context), // Calling the adaptiveText extension method for responsive font size
          ),
        ),
      ],
    ),
  );
}

// Extension method for responsive font size
extension AdaptiveText on Text {
  Text adaptiveText(BuildContext context, {bool isTitle = false}) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = isTitle
        ? 30.0
        : (screenWidth < 600
            ? 14.0
            : 18.0); // Setting different font size based on screen width
    return Text(
      data ?? '', // If data is null, set it to an empty string
      style: style?.copyWith(fontSize: fontSize) ??
          TextStyle(
              fontSize:
                  fontSize), // If style is not null, copy it and set the font size. If null, create a new TextStyle with the font size
    );
  }
}
