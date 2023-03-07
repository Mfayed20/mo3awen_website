import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

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
    "Poppins",
    80,
    FontWeight.w700,
    1.5,
    0,
    const Color(0xffffffff),
  );

  return Container(
    width: double.infinity,
    height: 650 * fem,
    decoration: BoxDecoration(
      color: const Color(0x99030303),
      image: DecorationImage(
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        image: const AssetImage(
          contactUsbgimg,
        ),
      ),
    ),
    child: Stack(
      children: [
        Positioned(
          left: 158 * fem,
          top: 35 * fem,
          child: Align(
            child: SizedBox(
              width: 1125 * fem,
              height: 562 * fem,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffffffff)),
                ),
              ),
            ),
          ),
        ),
        textPositioned(context, 460, 256, 522, 120, 'CONTACT US', titleStyle),
      ],
    ),
  );
}
