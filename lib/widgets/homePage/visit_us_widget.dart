import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class VisitUs extends StatelessWidget {
  const VisitUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return visitUs(context);
  }
}

Widget visitUs(BuildContext context) {
  TextStyle titleStyle = textStyle(
    context,
    "Poppins",
    40,
    FontWeight.w700,
    1.5,
    0,
    const Color(0xff000000),
  );
  TextStyle contactUsStyle = textStyle(
    context,
    "Poppins",
    24,
    FontWeight.w600,
    1.5,
    0,
    const Color(0xff0076f9),
  );
  TextStyle inputHeaderStyle = textStyle(
    context,
    "Poppins",
    16,
    FontWeight.w400,
    1.5,
    0,
    const Color(0xff000000),
  );
  TextStyle bttnTextStyle = textStyle(
    context,
    "Poppins",
    18,
    FontWeight.w400,
    1.5,
    0,
    const Color(0xff000000),
  );
  TextStyle normalStyle = textStyle(
    context,
    "Poppins",
    16,
    FontWeight.w400,
    1.5,
    0,
    const Color(0xff000000),
  );
  TextStyle textFieldlStyle = textStyle(
    context,
    "Poppins",
    16,
    FontWeight.w400,
    1.5,
    0,
    const Color(0xff000000),
  );

  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 54 * fem),
    width: 1441 * fem,
    height: 961 * fem,
    child: Stack(
      children: [
        /* I=images */
        imagepositioned(
          context,
          0,
          0,
          1441,
          890,
          visitUsPhoto,
        ),
        imagepositioned(
          context,
          86,
          367,
          575,
          392,
          visitUslocationPhoto,
        ),
        /* Title */
        textPositioned(
          context,
          83,
          45,
          163,
          60,
          'VISIT US',
          titleStyle,
        ),
        colorPositioned(
          context,
          83,
          117,
          100,
          9,
          4,
          const Color(0xff0076f9),
          Colors.transparent,
        ),
        /* info, Location, email text */
        textPositioned(
          context,
          26,
          280,
          282,
          72,
          'Alfaisal university',
          normalStyle,
        ),
        textPositioned(
          context,
          35,
          300,
          282,
          72,
          'Riyadh, Saudi Arabia',
          normalStyle,
        ),
        textPositioned(
          context,
          85,
          320,
          282,
          72,
          'updownstudiosgames@gmail.com',
          normalStyle,
        ),
        /* Contact Us Rectangle*/
        colorPositioned(
          context,
          739,
          175,
          614,
          786,
          3,
          const Color(0xffffffff),
          Colors.transparent,
        ),
        textPositioned(
          context,
          968,
          225,
          156,
          36,
          'CONTACT US',
          contactUsStyle,
        ),
        textPositioned(
          context,
          819,
          309,
          52,
          24,
          'Name:',
          inputHeaderStyle,
        ),
        textPositioned(
          context,
          819,
          419,
          47,
          24,
          'Email:',
          inputHeaderStyle,
        ),
        textPositioned(
          context,
          819,
          529,
          64,
          24,
          'Subject:',
          inputHeaderStyle,
        ),
        textPositioned(
          context,
          819,
          639,
          76,
          24,
          'Message:',
          inputHeaderStyle,
        ),
        textFieldPositioned(
          context,
          819,
          337,
          454,
          60,
          'Enter your name',
          textFieldlStyle,
          1,
          const Color(0xffe2e2e2),
          Colors.transparent,
          3,
        ),
        textFieldPositioned(
          context,
          819,
          447,
          454,
          60,
          'Enter your email',
          textFieldlStyle,
          1,
          const Color(0xffe2e2e2),
          Colors.transparent,
          3,
        ),
        textFieldPositioned(
          context,
          819,
          557,
          454,
          60,
          'Enter your subject',
          textFieldlStyle,
          1,
          const Color(0xffe2e2e2),
          Colors.transparent,
          3,
        ),
        textFieldPositioned(
          context,
          819,
          667,
          454,
          119,
          'Enter your message',
          textFieldlStyle,
          5,
          const Color(0xffe2e2e2),
          Colors.transparent,
          3,
        ),
        elevatedBttnPositioned(
          context,
          1059,
          836,
          214,
          60,
          const Color(0xff0076f9),
          Colors.transparent,
          0,
          3,
          () {},
          'SUBMIT',
          bttnTextStyle,
        ),
      ],
    ),
  );
}
