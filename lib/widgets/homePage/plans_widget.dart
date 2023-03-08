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
        imagepositioned(
          context,
          0,
          162,
          1440,
          688,
          plansPhoto,
        ),
        /* Title*/
        textPositioned(
          context,
          85,
          0,
          142,
          60,
          'PLANS',
          titleStyle,
        ),
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
        /* first plan item*/
        blurPositioned(
          context,
          86,
          216,
          25,
          25,
          414,
          580,
          const Color(0x4cc5c5c5),
        ),
        textPositioned(
          context,
          221,
          281.5,
          142,
          37,
          '6 MONTH',
          durationStyle,
        ),
        textPositioned(
          context,
          224,
          348.5,
          143,
          30,
          '5% Discount',
          normalStyle,
        ),
        textPositioned(
          context,
          187,
          409,
          211,
          97,
          '5000',
          priceStyle,
        ),
        textPositioned(
          context,
          383,
          418.5,
          70,
          37,
          'Riyal',
          normalStyle,
        ),
        textPositioned(
          context,
          195,
          558.5,
          197,
          30,
          'Valid for 6 month',
          normalStyle,
        ),
        colorPositioned(
          context,
          105,
          235,
          376,
          542,
          0,
          Colors.transparent,
          const Color(0xff000000),
        ),
        elevatedBttnPositioned(
          context,
          168,
          641,
          250,
          60,
          const Color(0xff0076f9),
          const Color(0xff000000),
          2,
          3,
          showAlertDialog(context, '6 MONTH'),
          'SELECT',
          textBttnStyle,
        ),
        /* secound plan item*/
        blurPositioned(
          context,
          512,
          8,
          25,
          25,
          414,
          580,
          const Color(0x4cc5c5c5),
        ),
        textPositioned(
          context,
          667,
          73.5,
          103,
          37,
          '1 YEAR',
          durationStyle,
        ),
        textPositioned(
          context,
          644,
          140.5,
          155,
          30,
          '10% Discount',
          normalStyle,
        ),
        textPositioned(
          context,
          613,
          201,
          212,
          97,
          '9000',
          priceStyle,
        ),
        textPositioned(
          context,
          811,
          213.5,
          70,
          37,
          'Riyal',
          normalStyle,
        ),
        textPositioned(
          context,
          619,
          350.5,
          201,
          30,
          'Valid for one year',
          normalStyle,
        ),
        colorPositioned(
          context,
          531,
          27,
          376,
          542,
          0,
          Colors.transparent,
          const Color(0xff000000),
        ),
        elevatedBttnPositioned(
          context,
          594,
          433,
          250,
          60,
          const Color(0xff0076f9),
          const Color(0xff000000),
          2,
          3,
          showAlertDialog(context, '1 YEAR'),
          'SELECT',
          textBttnStyle,
        ),
        /* third plan item*/
        blurPositioned(
          context,
          940,
          216,
          25,
          25,
          415,
          580,
          const Color(0x4cc5c5c5),
        ),
        textPositioned(
          context,
          1094,
          281.5,
          107,
          37,
          '2 YEAR',
          durationStyle,
        ),
        textPositioned(
          context,
          1071,
          348.5,
          159,
          30,
          '20% Discount',
          normalStyle,
        ),
        textPositioned(
          context,
          1022,
          409,
          251,
          97,
          '16000',
          priceStyle,
        ),
        textPositioned(
          context,
          1258,
          418.5,
          70,
          37,
          'Riyal',
          normalStyle,
        ),
        textPositioned(
          context,
          1048,
          558.5,
          201,
          30,
          'Valid for two year',
          normalStyle,
        ),
        colorPositioned(
          context,
          960,
          235,
          376,
          542,
          0,
          Colors.transparent,
          const Color(0xff000000),
        ),
        elevatedBttnPositioned(
          context,
          1023,
          641,
          250,
          60,
          const Color(0xff0076f9),
          const Color(0xff000000),
          2,
          3,
          showAlertDialog(context, '2 YEAR'),
          'SELECT',
          textBttnStyle,
        ),
      ],
    ),
  );
}

// method returns display a popup message when the user clicks on the button to select the plan and displays the selected plan
showAlertDialog(BuildContext context, String plan) {
  return () {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: RichText(
            text: TextSpan(
              text: 'You have selected ',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: plan,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const TextSpan(
                  text: ' plan',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  };
}
