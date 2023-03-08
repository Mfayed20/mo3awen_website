import 'package:flutter/material.dart';
import '../../pages/exercise_page.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return mainTabletDesktop(context);
  }
}

Widget mainTabletDesktop(BuildContext context) {
  TextStyle firstTxtStyle = textStyle(
    context,
    "Poppins",
    34,
    FontWeight.w700,
    1.3799999461,
    0.68,
    const Color(0xff000000),
  );
  TextStyle mainTextStyle = textStyle(
    context,
    "Inter",
    86,
    FontWeight.w900,
    1.2125,
    -1.72,
    const Color(0xff000000),
  );
  TextStyle thirdTxtStyle = textStyle(
    context,
    "Inter",
    28,
    FontWeight.w800,
    1.2125,
    0,
    const Color(0xff000000),
  );
  TextStyle bttntxtStyle = textStyle(
    context,
    "Inter",
    18,
    FontWeight.w600,
    1.2125,
    0,
    const Color(0xff000000),
  );

  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 87 * fem),
    width: 1441 * fem,
    height: 844 * fem,
    child: Stack(
      children: [
        /* Image */
        imagepositioned(
          context,
          0,
          0,
          1441,
          844,
          welcomeHomePage,
        ),
        /* first text */
        textPositioned(
          context,
          82,
          313,
          605,
          94,
          'NO LONGER IS THERE A NEED TO DO BORING EXERCISES',
          firstTxtStyle,
        ),
        /* second text */
        textPositioned(
          context,
          84,
          442,
          582,
          105,
          'TIME FOR FUN',
          mainTextStyle,
        ),
        /* first text and contanier*/
        colorPositioned(
          context,
          85,
          552,
          583,
          54,
          12,
          const Color(0xffffffff),
          Colors.transparent,
        ),
        textPositioned(
          context,
          114,
          562,
          523,
          34,
          'COMBING GAMING WITH EXERCISING',
          thirdTxtStyle,
        ),
        /* browse exercise Bttn*/
        elevatedBttnPositioned(
            context,
            235,
            663,
            265,
            60,
            const Color(0xff0076f9),
            Colors.transparent,
            0,
            3,
            navigateToPage(context, const ExercisePage()),
            "BROWSE EXERCISES",
            bttntxtStyle),
      ],
    ),
  );
}
