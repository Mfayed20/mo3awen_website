import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class Exercises extends StatelessWidget {
  const Exercises({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle headerStyle = textStyle(
      context,
      'Inter',
      50,
      FontWeight.w700,
      1.2125,
      3,
      const Color(0xffffffff),
    );
    TextStyle parghStyle = textStyle(
      context,
      'Poppins',
      20,
      FontWeight.w500,
      1.5,
      1.3,
      const Color(0xffffffff),
    );
    TextStyle titleStyle = textStyle(
      context,
      'Poppins',
      40,
      FontWeight.w700,
      1.5,
      0,
      const Color(0xff000000),
    );
    TextStyle headerExpStyle = textStyle(
      context,
      'Inter',
      30,
      FontWeight.w700,
      1.3800000509,
      -1.2,
      const Color(0xffffffff),
    );

    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          /* header container */
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 30 * fem),
            width: 2211.57 * fem,
            height: 960 * fem,
            child: Stack(
              children: [
                /* bg image */
                Positioned(
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 1440 * fem,
                      height: 746 * fem,
                      child: Image.asset(
                        exercisebgimg1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                /* black cover effect over bg image */
                colorPositioned(context, 0, 0, 1440, 746, 0,
                    const Color(0xb2030303), Colors.transparent),
                colorPositioned(context, 0, 432, 403, 74, 3,
                    const Color(0xff0076f9), Colors.transparent),
                textWidget(
                  context,
                  85,
                  544,
                  551,
                  83,
                  'These are the exercises we can over right\nnow and hopefully more will be added.',
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
                imageWidget(context, 705, 177, 300, 528, exercisebgimg2),
                textPositioned(
                    context, 85, 438, 276, 61, 'EXERCISE', headerStyle),
                /* 01 text*/
                colorPositioned(context, 85, 921, 100, 9, 4,
                    const Color(0xff0076f9), Colors.transparent),
                textPositioned(
                  context,
                  85,
                  824,
                  297,
                  120,
                  '01\nHand stretch\n',
                  titleStyle,
                ),
              ],
            ),
          ),
          /* 01 container
          *The above code is creating a container with a stack of widgets. The stack of widgets is
          *creating a background image and a rectangle with a text widget.
          */
          SizedBox(
            width: double.infinity,
            height: 580 * fem,
            child: Stack(
              children: [
                /* 01 image*/
                Positioned(
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 1440 * fem,
                      height: 580 * fem,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              exerciseloginimg1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                colorBoxWidget(
                  context,
                  806,
                  0,
                  550,
                  580,
                ),
                textWidget(
                    context,
                    847,
                    220,
                    463,
                    150,
                    'Hand stretch is an exercise where the work out focus on the stability of patient\'s arm as the scoring will depend on how straight the patient can extend his/her arm.\n',
                    parghStyle),
              ],
            ),
          ),
          /* 02 & 03 container*/
          Container(
            padding: EdgeInsets.fromLTRB(0 * fem, 78 * fem, 0 * fem, 115 * fem),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* 02 container 
                * The above code is creating a container with a stack of widgets. The stack of widgets
                * is creating a text widget and a text positioned widget. The text widget is creating
                * a text with a paragraph style. The text positioned widget is creating a text with a
                * title style.
                */
                Container(
                  margin:
                      EdgeInsets.fromLTRB(85 * fem, 0 * fem, 0 * fem, 30 * fem),
                  width: 321 * fem,
                  height: 120 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0 * fem,
                        top: 106 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 100 * fem,
                            height: 9 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4 * fem),
                                color: const Color(0xff0076f9),
                              ),
                            ),
                          ),
                        ),
                      ),
                      textPositioned(context, 0, 0, 321, 120,
                          '02\nEye cordination\n', titleStyle),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                  width: double.infinity,
                  height: 580 * fem,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        exerciseloginimg2,
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      colorBoxWidget(context, 84, 0, 550, 579),
                      textWidget(
                          context,
                          117,
                          141,
                          483,
                          300,
                          'Eye Coordination game is where the patient will test their eye-muscle coordination. The patient must insert the ball inside the ring/doughnut shape without letting the ball hit the ring, and the patient should try as much as possible to keep his arm on his side, this way the patient will also work on their Infraspinatus, teres minor, posterior deltoid muscles.\n',
                          parghStyle)
                    ],
                  ),
                ),
                /* 03 container 
                * The above code is creating a widget that is a container with a stack of widgets
                * inside it. The stack of widgets is a text widget and a positioned widget. The text
                * widget is a paragraph of text and the positioned widget is a blue bar that is
                * positioned at the bottom of the container.
                */
                Container(
                  margin:
                      EdgeInsets.fromLTRB(85 * fem, 0 * fem, 0 * fem, 30 * fem),
                  width: 255 * fem,
                  height: 120 * fem,
                  child: Stack(
                    children: [
                      colorWidget(context, 0, 98, 100, 9),
                      textPositioned(context, 0, 0, 255, 120,
                          '03\nLateral raise\n', titleStyle),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 0 * fem),
                  width: double.infinity,
                  height: 580 * fem,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        exerciseloginimg3,
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      colorBoxWidget(context, 806, 0, 550, 580),
                      textWidget(
                          context,
                          847,
                          221,
                          439,
                          150,
                          'Lateral Raise is an exercise where the patients raise their arms on their sides with a slight bent on the elbow, this exercise will strengthen the Lateral deltoids.\n',
                          parghStyle),
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
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: Align(
      child: SizedBox(
        width: width * fem,
        height: height * fem,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    ),
  );
}

Widget imageWidget(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  String image,
) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: Align(
      child: SizedBox(
        width: width * fem,
        height: height * fem,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50 * fem),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}

Widget colorBoxWidget(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: Align(
      child: SizedBox(
        width: width * fem,
        height: height * fem,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff0076f9),
            boxShadow: [
              BoxShadow(
                color: const Color(0x4c000000),
                offset: Offset(0 * fem, 0 * fem),
                blurRadius: 7 * fem,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget colorWidget(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: Align(
      child: SizedBox(
        width: width * fem,
        height: height * fem,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff0076f9),
            borderRadius: BorderRadius.circular(4 * fem),
          ),
        ),
      ),
    ),
  );
}
