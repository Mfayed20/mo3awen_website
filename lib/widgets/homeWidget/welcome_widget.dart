import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class MainPart extends StatelessWidget {
  const MainPart({Key? key}) : super(key: key);

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
        imageContainer(
          context,
          0,
          0,
          1441,
          844,
          welcomeHomePage,
        ),
        /* first text */
        textContainer(
          context,
          82,
          313,
          605,
          94,
          'NO LONGER IS THERE A NEED TO DO BORING EXERCISES',
          firstTxtStyle,
        ),
        /* second text */
        textContainer(
          context,
          84,
          442,
          582,
          105,
          'TIME FOR FUN',
          mainTextStyle,
        ),
        /* first text and contanier*/
        colorContainer(
          context,
          85,
          552,
          583,
          54,
          12,
          const Color(0xffffffff),
          Colors.transparent,
        ),
        textContainer(
          context,
          114,
          562,
          523,
          34,
          'COMBING GAMING WITH EXERCISING',
          thirdTxtStyle,
        ),
        /* browse exercise Bttn*/
        elevatedBttn(
            context,
            235,
            663,
            265,
            60,
            const Color(0xff0076f9),
            Colors.transparent,
            0,
            3,
            printHello,
            "BROWSE EXERCISES",
            bttntxtStyle),
      ],
    ),
  );
}

// method to print hello
void printHello() {
  print('Hello');
}
