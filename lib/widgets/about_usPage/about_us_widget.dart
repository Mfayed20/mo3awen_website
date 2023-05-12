import 'dart:ui';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

// This is the About Us section of the app
class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // SingleChildScrollView allows the content to scroll when the screen is not big enough to show all of it.
      child: Column(
        children: [
          _buildTopSection(
              context), // The top section containing an image and text overlay
          const SizedBox(height: 16),
          _buildBottomSection(
              context), // The bottom section containing an image and text content
        ],
      ),
    );
  }

  // This is the top section of the About Us screen which contains an image and a text overlay
  Widget _buildTopSection(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isSmallScreen = screenWidth <= 600;

    return SizedBox(
      width: double.infinity,
      child: isSmallScreen
          ? Column(
              children: [
                AspectRatio(
                  aspectRatio: 1440 / 746,
                  child: Image.network(
                    aboutUsbgimg1,
                    fit: BoxFit.cover,
                  ),
                ),
                _buildTopTextOverlay(context),
              ],
            )
          : Stack(
              alignment: Alignment
                  .bottomCenter, // Add this line to align the text content to the bottom
              children: [
                AspectRatio(
                  aspectRatio: 1440 / 746,
                  child: Image.network(
                    aboutUsbgimg1,
                    fit: BoxFit.cover,
                  ),
                ),
                _buildTopTextOverlay(context),
              ],
            ),
    );
  }

  // This is the text overlay for the top section
  Widget _buildTopTextOverlay(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double margin = screenWidth / 8; // 1/4 of the screen width divided by 2

    return Padding(
      padding: EdgeInsets.only(bottom: 16, left: margin, right: margin),
      child: Stack(
        children: [
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
              child: Container(
                color: const Color(0x4cc5c5c5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: _buildTopTextContent(screenWidth),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // This is the text content for the top section
  Widget _buildTopTextContent(double screenWidth) {
    double titleFontSize = getFontSizeForScreenWidth(screenWidth, 30);
    double descriptionFontSize = getFontSizeForScreenWidth(screenWidth, 20);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Passionate About Helping Others',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: titleFontSize,
            ),
          ),
        ),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            text:
                "Although Mo3awen can help make your work out fun, it is not it's main goal. High percentage of people who need physical therapy are elderly or people who had surgery. Going to the hospital would be a bit difficult for them, with Mo3awen they can do their physical therapy at home with the doctor being able to monitor their progress easily.",
            style:
                TextStyle(color: Colors.black, fontSize: descriptionFontSize),
          ),
        ),
      ],
    );
  }

  // This is the bottom section of the About Us screen which contains an image and text content
  Widget _buildBottomSection(BuildContext context) {
    return Container(
      color: const Color(0xff0076f9),
      child: Row(
        children: [
          _buildBottomLeftImage(
              context), // The left section containing an image
          _buildBottomRightText(
              context), // The right section containing text content
        ],
      ),
    );
  }

  // This is the image for the left section of the bottom section
  Widget _buildBottomLeftImage(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scaleFactor = screenWidth / 1440;

    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          82 * scaleFactor,
          114 * scaleFactor,
          0,
          80 * scaleFactor,
        ),
        child: Image.network(
          aboutUsbgimg2,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // This is the text content for the right section of the bottom section
  Widget _buildBottomRightText(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scaleFactor = screenWidth / 1440;
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(15 * scaleFactor, 20 * scaleFactor,
            16 * scaleFactor, 20 * scaleFactor),
        margin: EdgeInsets.fromLTRB(0 * scaleFactor, 114 * scaleFactor,
            82 * scaleFactor, 80 * scaleFactor),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: Colors.white,
        ),
        child: _buildBottomTextContent(context),
      ),
    );
  }

  // This is the text content for the right section of the bottom section
  Widget _buildBottomTextContent(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double titleFontSize = getFontSizeForScreenWidth(screenWidth, 30);
    double descriptionFontSize = getFontSizeForScreenWidth(screenWidth, 20);

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              text: 'BUILDING A COMMUNITY',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color(0xff0076f9),
                fontSize: titleFontSize,
              ),
            ),
          ),
          const SizedBox(height: 30),
          RichText(
            text: TextSpan(
              text:
                  "With the website, we are hoping to build a community, a big support group if you will. People can share their experiences with others who can easily sympathize with them since they went through something similar. Patients can even make friends since it is hard for them to leave their home due to what they are going through. Doctors can post motivational content on the website for patients to help them and show them that doctors are with them",
              style: TextStyle(
                color: Colors.black,
                fontSize: descriptionFontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // This function returns a font size based on the screen width
  double getFontSizeForScreenWidth(double screenWidth, double baseFontSize) {
    if (screenWidth <= 600) {
      return baseFontSize * 0.8;
    } else if (screenWidth <= 800) {
      return baseFontSize * 0.9;
    }
    return baseFontSize;
  }
}


// import 'dart:ui';
// import 'package:flutter/material.dart';
// import '../../utils/constants.dart';
// import '../../utils/styles.dart';

// class AboutUsWidget extends StatelessWidget {
//   const AboutUsWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return desktopView(context);
//   }
// }

// Widget desktopView(BuildContext context) {
//   double baseWidth = 1440;
//   double fem = MediaQuery.of(context).size.width / baseWidth;
//   double ffem = fem * 0.97;
//   return Container(
//     // physicaltherapyaboutusqAA (1:37)
//     width: double.infinity,
//     decoration: BoxDecoration(
//       color: Color(0xffffffff),
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           // autogroupzrxa89G (UTinpyYFdP8fpSZokjZrxA)
//           margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 110 * fem),
//           width: 1441 * fem,
//           height: 998 * fem,
//           child: Stack(
//             children: [
//               Positioned(
//                 // herosectionforaboutusETC (1:38)
//                 left: 0 * fem,
//                 top: 0 * fem,
//                 child: Align(
//                   child: aboutUsImage(1440, 746, aboutUsbgimg1, context),
//                 ),
//               ),
//               Positioned(
//                 // leftoverlyrectanglekgS (1:43)
//                 left: 244 * fem,
//                 top: 531 * fem,
//                 child: ClipRect(
//                   child: BackdropFilter(
//                     filter: ImageFilter.blur(
//                       sigmaX: 25 * fem,
//                       sigmaY: 25 * fem,
//                     ),
//                     child: Align(
//                       child: SizedBox(
//                         width: 954 * fem,
//                         height: 451 * fem,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Color(0x4cc5c5c5),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 // passionateabouthelpingotherse1 (1:45)
//                 left: 494 * fem,
//                 top: 591 * fem,
//                 child: Align(
//                   child: SizedBox(
//                     width: 455 * fem,
//                     height: 162 * fem,
//                     child: aboutUsText(
//                         0,
//                         0,
//                         0,
//                         0,
//                         "Passionate About \nHelping Others",
//                         50,
//                         FontWeight.w900,
//                         context),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 // althoughmo3awencanhelpmakeyour (1:46)
//                 left: 291 * fem,
//                 top: 757 * fem,
//                 child: Align(
//                   child: SizedBox(
//                     width: 862 * fem,
//                     height: 150 * fem,
//                     child: aboutUsText(
//                         0,
//                         0,
//                         0,
//                         0,
//                         "Although Mo3awen can help make your work out fun, it is not  it's main goal. High percentage of people who need physical therapy are elderly or people who had surgery. Going to the hospital would be a bit difficult for them, with Mo3awen they can do their physical therapy at home with the doctor being able to monitor their prograde easily.",
//                         20,
//                         FontWeight.w600,
//                         context),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Container(
//           // autogroupua9q5ke (UTiod33qZ9MAvkJjGdUa9Q)
//           width: 1441 * fem,
//           height: 800 * fem,
//           child: Stack(
//             children: [
//               Positioned(
//                 // rectangle9ENe (1:44)
//                 left: 0 * fem,
//                 top: 0 * fem,
//                 child: Align(
//                   child: SizedBox(
//                     width: 1441 * fem,
//                     height: 748 * fem,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color(0xff0076f9),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 // b7a2665c978e46cf83ed7b46f77ed8 (1:47)
//                 left: 82 * fem,
//                 top: 114 * fem,
//                 child: Align(
//                   child: aboutUsImage(702, 468, aboutUsbgimg2, context),
//                 ),
//               ),
//               Positioned(
//                 // rectangle8TWJ (1:48)
//                 left: 701 * fem,
//                 top: 73 * fem,
//                 child: Align(
//                   child: SizedBox(
//                     width: 614 * fem,
//                     height: 550 * fem,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color(0xffffffff),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Color(0x3f000000),
//                             offset: Offset(0 * fem, 4 * fem),
//                             blurRadius: 7 * fem,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 // buildingacommunityZpE (1:49)
//                 left: 750 * fem,
//                 top: 167 * fem,
//                 child: Align(
//                   child: SizedBox(
//                     width: 376 * fem,
//                     height: 37 * fem,
//                     child: Text(
//                       'BUILDING A COMMUNITY',
//                       textAlign: TextAlign.center,
//                       style: safeGoogleFont(
//                         'Inter',
//                         fontSize: 30 * ffem,
//                         fontWeight: FontWeight.w900,
//                         height: 1.2125 * ffem / fem,
//                         color: Color(0xff0076f9),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 // withthewebsitewearehopingtobui (1:50)
//                 left: 749 * fem,
//                 top: 252 * fem,
//                 child: Align(
//                   child: SizedBox(
//                     width: 519 * fem,
//                     height: 297 * fem,
//                     child: aboutUsText(
//                         0,
//                         0,
//                         0,
//                         0,
//                         "with the Website we are hoping to build a community, a big support group if you will, People can share their experience with other people who can easily sympathize with them since they want through something similar. Patients can even make friends since it is hard for them to leave their home do to what they are going though. Doctors can posts motivational post on the website for the patinas to help them and show them that doctors are with them.\n​\n",
//                         18,
//                         FontWeight.w500,
//                         context),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }

// // a widget that takes 6 integers and 1 string and returns a container
// Widget aboutUsImage(
//     double width, double height, String image, BuildContext context) {
//   double baseWidth = 1440;
//   double fem = MediaQuery.of(context).size.width / baseWidth;
//   return SizedBox(
//     width: width * fem,
//     height: height * fem,
//     child: Image.network(
//       image,
//       fit: BoxFit.cover,
//     ),
//   );
// }

// // a widget call footerboldtext that takes 4 doubles and 1 string and returns a container
// Widget aboutUsText(double left, double top, double right, double bottom,
//     String text, double fontSize, FontWeight fontWeight, BuildContext context) {
//   double baseWidth = 1440;
//   double fem = MediaQuery.of(context).size.width / baseWidth;
//   return Container(
//     margin:
//         EdgeInsets.fromLTRB(left * fem, top * fem, right * fem, bottom * fem),
//     child: Text(text, style: footerBoldText(fontSize, fontWeight, context)),
//   );
// }
