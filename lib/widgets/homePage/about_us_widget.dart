import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return desktopView(context);
  }
}

Widget desktopView(BuildContext context) {
  TextStyle normalStyle = textStyle(
    context,
    "poppins",
    24,
    FontWeight.w500,
    1.5,
    1.56,
    const Color(0xff000000),
  );
  TextStyle titleStyle = textStyle(
    context,
    "poppins",
    40,
    FontWeight.w700,
    1.5,
    2.6,
    const Color(0xff000000),
  );

  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 95 * fem),
    width: 1441 * fem,
    height: 721 * fem,
    child: Stack(
      children: [
        /* background */
        colorPositioned(
          context,
          0,
          141,
          1441,
          580,
          0,
          const Color(0xff0076f9),
          Colors.transparent,
        ),
        /* title */
        colorPositioned(
          context,
          85,
          72,
          100,
          9,
          4,
          const Color(0xff0076f9),
          Colors.transparent,
        ),
        textPositioned(context, 85, 0, 222, 60, 'ABOUT US', titleStyle),
        /* text */
        textPositioned(
          context,
          85,
          216,
          554,
          216,
          'The main goal of Mo3awen is to help you do your physical therapy. It adds a fun element to the dull routine of working out. It will also keep the patients entertained and committed to doing their exercises.',
          normalStyle,
        ),
        /* Image */
        imagepositioned(
          context,
          789,
          29,
          550,
          556,
          aboutUsPhoto,
        ),
        colorPositioned(
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
