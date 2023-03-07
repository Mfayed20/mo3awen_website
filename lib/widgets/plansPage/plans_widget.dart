import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class Planspage extends StatelessWidget {
  const Planspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return desktopPlans(context);
  }
}

Widget desktopPlans(BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;

  TextStyle titleStyle = textStyle(
    context,
    "Inter",
    60,
    FontWeight.w900,
    1.2125,
    3.6,
    const Color(0xffffffff),
  );
  TextStyle normalStyle = textStyle(
    context,
    "Inter",
    30,
    FontWeight.w700,
    1.3800000509,
    -1.2,
    const Color(0xffffffff),
  );

  return Container(
    padding: EdgeInsets.fromLTRB(0 * fem, 382 * fem, 0 * fem, 0 * fem),
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
    width: double.infinity,
    /* bg image */
    decoration: BoxDecoration(
      color: const Color(0x33030303),
      image: DecorationImage(
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        fit: BoxFit.cover,
        image: const AssetImage(plansbgimg),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /* white container with text */
        ClipRect(
          child: Container(
            margin:
                EdgeInsets.fromLTRB(294 * fem, 0 * fem, 295 * fem, 179 * fem),
            width: double.infinity,
            height: 110 * fem,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20 * fem),
              color: const Color(0x4cffffff),
            ),
            child: Center(
              child: Text(
                'Choose the Plan for You',
                style: titleStyle,
              ),
            ),
          ),
        ),
        /* blue container with text */
        Container(
          width: double.infinity,
          height: 74 * fem,
          decoration: const BoxDecoration(
            color: Color(0xff0076f9),
          ),
          child: Center(
            child: Text(
              'We offer coaching, consulting, and support for your personal and professional development.',
              style: normalStyle,
            ),
          ),
        ),
      ],
    ),
  );
}
