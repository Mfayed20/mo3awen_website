import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return welcomeContactUS(context);
  }
}

Widget welcomeContactUS(BuildContext context) {
  // Defining variables for responsive design
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;

  // Defining a TextStyle object for the title
  TextStyle titleStyle = buildTextStyle(
    context,
    "Poppins",
    80,
    FontWeight.w700,
    1.5,
    0,
    const Color(0xffffffff),
  );

  // Returning a Container with a background image and a Stack containing a border and a Text
  return Container(
    width: double.infinity,
    height: 650 * screenWidthRatio,
    decoration: BoxDecoration(
      color: const Color(0x99030303),
      image: DecorationImage(
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        image: const AssetImage(
          contactUsbgimg, // Using the contactUsbgimg constant from the constants file
        ),
      ),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        // Defining a SizedBox containing a border
        SizedBox(
          width: 1125 * screenWidthRatio,
          height: 562 * screenWidthRatio,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffffffff)),
            ),
          ),
        ),
        // Defining a Text widget containing the title
        Text(
          'CONTACT US',
          textAlign: TextAlign.center,
          style: titleStyle,
        ),
      ],
    ),
  );
}
