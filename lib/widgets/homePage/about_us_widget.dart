// Importing necessary libraries and files
import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class AboutUsHP extends StatelessWidget {
  const AboutUsHP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return aboutUS(context);
  }
}

Widget aboutUS(BuildContext context) {
  // Defining text styles
  TextStyle normalStyle = buildTextStyle(
    context,
    "poppins",
    27,
    FontWeight.w700,
    1.5,
    1.56,
    Colors.black,
  );
  TextStyle titleStyle = buildTextStyle(
    context,
    "poppins",
    40,
    FontWeight.w900,
    1.5,
    2.6,
    const Color(0xff000000),
  );

  // Calculating relative dimensions for UI layout
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;

  // Returning the UI layout
  return Container(
    margin: EdgeInsets.fromLTRB(0 * screenWidthRatio, 50 * screenWidthRatio,
        0 * screenWidthRatio, 50 * screenWidthRatio),
    width: 1441 * screenWidthRatio,
    height: 721 * screenWidthRatio,
    child: Stack(
      children: [
        // Background container
        buildColorPositioned(
          context,
          0,
          141,
          1441,
          580,
          0,
          const Color(0xff0076f9),
          Colors.transparent,
        ),
        // Title container
        buildColorPositioned(
          context,
          85,
          72,
          100,
          9,
          4,
          const Color(0xff0076f9),
          Colors.transparent,
        ),
        buildTextPositioned(context, 85, 0, 222, 60, 'ABOUT US', titleStyle),
        // Text container
        buildTextPositioned(
          context,
          85,
          216,
          554,
          216,
          'The main goal of Mo3awen is to help you do your physical therapy. It adds a fun element to the dull routine of working out. It will also keep the patients entertained and committed to doing their exercises.',
          normalStyle,
        ),
        // Image container
        buildImagepositioned(
          context,
          789,
          29,
          550,
          556,
          aboutUsPhoto,
        ),
        // Overlay container
        buildColorPositioned(
          context,
          761,
          1,
          606,
          612,
          0,
          Colors.transparent,
          const Color(0xff000000),
        ),
      ],
    ),
  );
}
