// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/styles.dart';

class About_Us extends StatelessWidget {
  const About_Us({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return desktopView(context);
  }
}

Widget desktopView(BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Container(
    // physicaltherapyaboutusqAA (1:37)
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xffffffff),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // autogroupzrxa89G (UTinpyYFdP8fpSZokjZrxA)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 110 * fem),
          width: 1441 * fem,
          height: 998 * fem,
          child: Stack(
            children: [
              Positioned(
                // herosectionforaboutusETC (1:38)
                left: 0 * fem,
                top: 0 * fem,
                child: Align(
                  child: About_Us_Images(1440, 746, aboutUsbgimg1, context),
                ),
              ),
              Positioned(
                // leftoverlyrectanglekgS (1:43)
                left: 244 * fem,
                top: 531 * fem,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 25 * fem,
                      sigmaY: 25 * fem,
                    ),
                    child: Align(
                      child: SizedBox(
                        width: 954 * fem,
                        height: 451 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x4cc5c5c5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // passionateabouthelpingotherse1 (1:45)
                left: 494 * fem,
                top: 591 * fem,
                child: Align(
                  child: SizedBox(
                    width: 455 * fem,
                    height: 162 * fem,
                    child: About_Us_Text(
                        0,
                        0,
                        0,
                        0,
                        "Passionate About \nHelping Others",
                        50,
                        FontWeight.w900,
                        context),
                  ),
                ),
              ),
              Positioned(
                // althoughmo3awencanhelpmakeyour (1:46)
                left: 291 * fem,
                top: 757 * fem,
                child: Align(
                  child: SizedBox(
                    width: 862 * fem,
                    height: 150 * fem,
                    child: About_Us_Text(
                        0,
                        0,
                        0,
                        0,
                        "Although Mo3awen can help make your work out fun, it is not  it\'s main\ngoal . High percentage of people who need physical therapy are elderly\nor people who had surgery. Going to the hospital would be a bit difficult \nfor them, with Mo3awen they can do their physical therapy at home with\nthe doctor being able to monitor their prograde easily.",
                        20,
                        FontWeight.w600,
                        context),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          // autogroupua9q5ke (UTiod33qZ9MAvkJjGdUa9Q)
          width: 1441 * fem,
          height: 800 * fem,
          child: Stack(
            children: [
              Positioned(
                // rectangle9ENe (1:44)
                left: 0 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 1441 * fem,
                    height: 748 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff0076f9),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // b7a2665c978e46cf83ed7b46f77ed8 (1:47)
                left: 82 * fem,
                top: 114 * fem,
                child: Align(
                  child: About_Us_Images(702, 468, aboutUsbgimg2, context),
                ),
              ),
              Positioned(
                // rectangle8TWJ (1:48)
                left: 701 * fem,
                top: 73 * fem,
                child: Align(
                  child: SizedBox(
                    width: 614 * fem,
                    height: 550 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 7 * fem,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // buildingacommunityZpE (1:49)
                left: 750 * fem,
                top: 167 * fem,
                child: Align(
                  child: SizedBox(
                    width: 376 * fem,
                    height: 37 * fem,
                    child: Text(
                      'BUILDING A COMMUNITY',
                      textAlign: TextAlign.center,
                      style: safeGoogleFont(
                        'Inter',
                        fontSize: 30 * ffem,
                        fontWeight: FontWeight.w900,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff0076f9),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // withthewebsitewearehopingtobui (1:50)
                left: 749 * fem,
                top: 252 * fem,
                child: Align(
                  child: SizedBox(
                    width: 519 * fem,
                    height: 297 * fem,
                    child: About_Us_Text(
                        0,
                        0,
                        0,
                        0,
                        "with the Website we are hoping to build a community, a big support group if you will, People can share their experience with other people who can easily sympathize with them since they want through something similar. Patients can even make friends since it is hard for them to leave their home do to what they are going though. Doctors can posts motivational post on the website for the patinas to help them and show them that doctors are with them.\n​\n",
                        18,
                        FontWeight.w500,
                        context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// a widget that takes 6 integers and 1 string and returns a container
Widget About_Us_Images(
    double width, double height, String image, BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return SizedBox(
    width: width * fem,
    height: height * fem,
    child: Image.network(
      image,
      fit: BoxFit.cover,
    ),
  );
}

// a widget call footerboldtext that takes 4 doubles and 1 string and returns a container
Widget About_Us_Text(double left, double top, double right, double bottom,
    String text, double fontSize, FontWeight fontWeight, BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin:
        EdgeInsets.fromLTRB(left * fem, top * fem, right * fem, bottom * fem),
    child: Text(text, style: footerBoldText(fontSize, fontWeight, context)),
  );
}

void printHello() {
  print('Hello');
}
