import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class Plans extends StatelessWidget {
  const Plans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return desktopPlans(context);
  }
}

Widget desktopPlans(BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  /* discount, valid txt, and Riyal style */
  TextStyle normalStyle = textStyle(
    context,
    "Inter",
    24,
    FontWeight.w500,
    1.2125,
    0,
    const Color(0xff000000),
  );
  TextStyle titleStyle = textStyle(
    context,
    "Poppins",
    40,
    FontWeight.w700,
    1.5,
    2.6,
    const Color(0xff000000),
  );
  TextStyle priceStyle = textStyle(
    context,
    "Inter",
    80,
    FontWeight.w600,
    1.2125,
    0,
    const Color(0xff4098fb),
  );
  TextStyle durationStyle = textStyle(
    context,
    "Inter",
    30,
    FontWeight.w600,
    1.2125,
    0,
    const Color(0xff4098fb),
  );
  TextStyle textBttnStyle = textStyle(
    context,
    "Inter",
    20,
    FontWeight.w500,
    1.2125,
    0.8,
    const Color(0xff000000),
  );

  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 46 * fem),
    width: double.infinity,
    height: 851 * fem,
    child: Stack(
      children: [
        /* Image */
        imageContainer(
          context,
          0,
          162,
          1440,
          688,
          plansPhoto,
        ),
        /* Title*/
        textContainer(
          context,
          85,
          0,
          142,
          60,
          'PLANS',
          titleStyle,
        ),
        colorContainer(
          context,
          85,
          72,
          100,
          9,
          4,
          const Color(0xff0076f9),
          Colors.transparent,
        ),
        /* first plan item*/
        blurContainer(
          context,
          86,
          216,
          25,
          25,
          414,
          580,
          const Color(0x4cc5c5c5),
        ),
        textContainer(
          context,
          221,
          281.5,
          142,
          37,
          '6 MONTH',
          durationStyle,
        ),
        textContainer(
          context,
          224,
          348.5,
          143,
          30,
          '5% Discount',
          normalStyle,
        ),
        textContainer(
          context,
          187,
          409,
          211,
          97,
          '5000',
          priceStyle,
        ),
        textContainer(
          context,
          383,
          418.5,
          70,
          37,
          'Riyal',
          normalStyle,
        ),
        textContainer(
          context,
          195,
          558.5,
          197,
          30,
          'Valid for 6 month',
          normalStyle,
        ),
        colorContainer(
          context,
          105,
          235,
          376,
          542,
          0,
          Colors.transparent,
          const Color(0xff000000),
        ),
        elevatedBttn(
          context,
          168,
          641,
          250,
          60,
          const Color(0xff0076f9),
          const Color(0xff000000),
          2,
          3,
          printHello,
          'SELECT',
          textBttnStyle,
        ),
        /* secound plan item*/
        blurContainer(
          context,
          512,
          8,
          25,
          25,
          414,
          580,
          const Color(0x4cc5c5c5),
        ),
        textContainer(
          context,
          667,
          73.5,
          103,
          37,
          '1 YEAR',
          durationStyle,
        ),
        textContainer(
          context,
          644,
          140.5,
          155,
          30,
          '10% Discount',
          normalStyle,
        ),
        textContainer(
          context,
          613,
          201,
          212,
          97,
          '9000',
          priceStyle,
        ),
        textContainer(
          context,
          811,
          213.5,
          70,
          37,
          'Riyal',
          normalStyle,
        ),
        textContainer(
          context,
          619,
          350.5,
          201,
          30,
          'Valid for one year',
          normalStyle,
        ),
        colorContainer(
          context,
          531,
          27,
          376,
          542,
          0,
          Colors.transparent,
          const Color(0xff000000),
        ),
        elevatedBttn(
          context,
          594,
          433,
          250,
          60,
          const Color(0xff0076f9),
          const Color(0xff000000),
          2,
          3,
          printHello,
          'SELECT',
          textBttnStyle,
        ),
        /* third plan item*/
        blurContainer(
          context,
          940,
          216,
          25,
          25,
          415,
          580,
          const Color(0x4cc5c5c5),
        ),
        textContainer(
          context,
          1094,
          281.5,
          107,
          37,
          '2 YEAR',
          durationStyle,
        ),
        textContainer(
          context,
          1071,
          348.5,
          159,
          30,
          '20% Discount',
          normalStyle,
        ),
        textContainer(
          context,
          1022,
          409,
          251,
          97,
          '16000',
          priceStyle,
        ),
        textContainer(
          context,
          1258,
          418.5,
          70,
          37,
          'Riyal',
          normalStyle,
        ),
        textContainer(
          context,
          1048,
          558.5,
          201,
          30,
          'Valid for two year',
          normalStyle,
        ),
        colorContainer(
          context,
          960,
          235,
          376,
          542,
          0,
          Colors.transparent,
          const Color(0xff000000),
        ),
        elevatedBttn(
          context,
          1023,
          641,
          250,
          60,
          const Color(0xff0076f9),
          const Color(0xff000000),
          2,
          3,
          printHello,
          'SELECT',
          textBttnStyle,
        ),
      ],
    ),
  );
}

// method to print hello
void printHello() {
  print('Hello');
}
