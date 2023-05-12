import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class ExercisesWidget extends StatelessWidget {
  const ExercisesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define text styles
    final headerStyle = buildTextStyle(
      context,
      'Inter',
      50,
      FontWeight.w700,
      1.2125,
      3,
      const Color(0xffffffff),
    );
    final parghStyle = buildTextStyle(
      context,
      'Poppins',
      20,
      FontWeight.w500,
      1.5,
      1.3,
      const Color(0xffffffff),
    );
    final titleStyle = buildTextStyle(
      context,
      'Poppins',
      40,
      FontWeight.w700,
      1.5,
      0,
      const Color(0xff000000),
    );
    final headerExpStyle = buildTextStyle(
      context,
      'Inter',
      30,
      FontWeight.w700,
      1.3800000509,
      -1.2,
      const Color(0xffffffff),
    );

    // Get the screen width ratio to use for scaling
    const baseWidth = 1440;
    final screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Header container with a stack of widgets
          Container(
            margin: EdgeInsets.fromLTRB(
              0 * screenWidthRatio,
              0 * screenWidthRatio,
              0 * screenWidthRatio,
              30 * screenWidthRatio,
            ),
            width: 2211.57 * screenWidthRatio,
            height: 960 * screenWidthRatio,
            child: Stack(
              children: [
                // Background image
                Positioned(
                  left: 0 * screenWidthRatio,
                  top: 0 * screenWidthRatio,
                  child: Align(
                    child: SizedBox(
                      width: 1440 * screenWidthRatio,
                      height: 746 * screenWidthRatio,
                      child: Image.asset(
                        exercisebgimg1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                // Black cover effect over bg image
                buildColorPositioned(
                  context,
                  0,
                  0,
                  1440,
                  746,
                  0,
                  const Color(0xb2030303),
                  Colors.transparent,
                ),
                // Exercise images and text
                textWidget(
                  context,
                  85,
                  544,
                  551,
                  83,
                  'These are the exercises we offer now\nand hopefully more will be added.',
                  headerExpStyle,
                ),
                imageWidget(
                  context,
                  1036,
                  75,
                  300,
                  528,
                  exercisebgimg3,
                ),
                imageWidget(
                  context,
                  705,
                  177,
                  300,
                  528,
                  exercisebgimg2,
                ),
                buildTextPositioned(
                  context,
                  85,
                  438,
                  276,
                  61,
                  'EXERCISE',
                  headerStyle,
                ),
                buildColorPositioned(
                  context,
                  85,
                  921,
                  100,
                  9,
                  4,
                  const Color(0xff0076f9),
                  Colors.transparent,
                ),
                buildTextPositioned(
                  context,
                  85,
                  824,
                  297,
                  120,
                  '01\nShip Voyage\n',
                  titleStyle,
                ),
              ],
            ),
          ),

          // Container for exercise 1
          SizedBox(
            width: double.infinity,
            height: 580 * screenWidthRatio,
            child: Stack(
              children: [
                // Exercise 1 image
                Positioned(
                  left: 0 * screenWidthRatio,
                  top: 0 * screenWidthRatio,
                  child: Align(
                    child: SizedBox(
                      width: 1440 * screenWidthRatio,
                      height: 580 * screenWidthRatio,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(exerciseloginimg1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Black cover effect over exercise 1 image
                colorBoxWidget(
                  context,
                  806,
                  0,
                  550,
                  580,
                ),
                // Exercise 1 text description
                textWidget(
                  context,
                  847,
                  220,
                  463,
                  150,
                  'Your ship has crashed, and you see a distant village. Reach the island before dying. Stand up, grab the oars, and move them in a lateral raise motion to make the boat move.',
                  parghStyle,
                ),
              ],
            ),
          ),

          // Containers for exercises 2 and 3
          Container(
            padding: EdgeInsets.fromLTRB(
              0 * screenWidthRatio,
              78 * screenWidthRatio,
              0 * screenWidthRatio,
              115 * screenWidthRatio,
            ),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container for exercise 2
                Container(
                  margin: EdgeInsets.fromLTRB(
                    85 * screenWidthRatio,
                    0 * screenWidthRatio,
                    0 * screenWidthRatio,
                    30 * screenWidthRatio,
                  ),
                  width: 321 * screenWidthRatio,
                  height: 120 * screenWidthRatio,
                  child: Stack(
                    children: [
                      // Blue bar at the bottom of exercise 2 container
                      Positioned(
                        left: 0 * screenWidthRatio,
                        top: 106 * screenWidthRatio,
                        child: Align(
                          child: SizedBox(
                            width: 100 * screenWidthRatio,
                            height: 9 * screenWidthRatio,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(4 * screenWidthRatio),
                                color: const Color(0xff0076f9),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Exercise 2 title
                      buildTextPositioned(
                        context,
                        0,
                        0,
                        321,
                        120,
                        '02\nBunker Run\n',
                        titleStyle,
                      ),
                    ],
                  ),
                ),
                // Container for exercise 2 description and image
                Container(
                  margin: EdgeInsets.fromLTRB(
                    1 * screenWidthRatio,
                    0 * screenWidthRatio,
                    0 * screenWidthRatio,
                    0 * screenWidthRatio,
                  ),
                  width: double.infinity,
                  height: 580 * screenWidthRatio,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(exerciseloginimg2),
                    ),
                  ),
                  child: Stack(
                    children: [
                      // Black cover effect over exercise 2 image
                      colorBoxWidget(
                        context,
                        84,
                        0,
                        550,
                        579,
                      ),
                      // Exercise 2 text
                      textWidget(
                        context,
                        117,
                        141,
                        483,
                        300,
                        'During this exercise, you will find yourself in a warzone and will need to use your jumping skills to navigate a series of obstacles and evade danger. These obstacles may include rubble, debris, and other hazards that you must jump over or navigate around in order to make your way to safety.\n',
                        parghStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Returns a Positioned widget containing a text widget
Widget textWidget(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  String text,
  TextStyle textStyle,
) {
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * screenWidthRatio,
    top: top * screenWidthRatio,
    child: Align(
      child: SizedBox(
        width: width * screenWidthRatio,
        height: height * screenWidthRatio,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    ),
  );
}

// Returns a Positioned widget containing an image widget
Widget imageWidget(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  String image,
) {
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * screenWidthRatio,
    top: top * screenWidthRatio,
    child: Align(
      child: SizedBox(
        width: width * screenWidthRatio,
        height: height * screenWidthRatio,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50 * screenWidthRatio),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}

// Returns a Positioned widget containing a colored box
Widget colorBoxWidget(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
) {
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * screenWidthRatio,
    top: top * screenWidthRatio,
    child: Align(
      child: SizedBox(
        width: width * screenWidthRatio,
        height: height * screenWidthRatio,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff0076f9),
            boxShadow: [
              BoxShadow(
                color: const Color(0x4c000000),
                offset: Offset(0 * screenWidthRatio, 0 * screenWidthRatio),
                blurRadius: 7 * screenWidthRatio,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

// Returns a Positioned widget containing a colored box
Widget colorWidget(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
) {
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * screenWidthRatio,
    top: top * screenWidthRatio,
    child: Align(
      child: SizedBox(
        width: width * screenWidthRatio,
        height: height * screenWidthRatio,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff0076f9),
            borderRadius: BorderRadius.circular(4 * screenWidthRatio),
          ),
        ),
      ),
    ),
  );
}
