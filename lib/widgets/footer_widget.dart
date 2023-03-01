// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/styles.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

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
    // footer26Z (2:38)
    padding: EdgeInsets.fromLTRB(82 * fem, 49 * fem, 127 * fem, 46 * fem),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xffe2e2e2),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // autogroups4wrt8m (YA9UmQmhjcu6uJ2TvGS4WR)
          margin: EdgeInsets.fromLTRB(3 * fem, 0 * fem, 196 * fem, 40 * fem),
          width: double.infinity,
          height: 81 * fem,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // frameZkh (2:76)
                width: 126 * fem,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    footerimages(
                        0, 0, 0, 6.13, 84.06, 56.5, footerlogoimg, context),
                    Container(
                      // groupn7f (2:77)
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          footerimages(0, 0.03, 2.64, 0, 18.82, 17.62,
                              footerlogoimglatter_M, context),
                          footerimages(0, 0.07, 1.44, 0, 18.15, 18.29,
                              footerlogoimglatter_O, context),
                          footerimages(0, 0, 1.18, 0.02, 12.63, 18.34,
                              footerlogoimglatter_3, context),
                          footerimages(0, 0.02, 0.41, 0, 15.91, 17.62,
                              footerlogoimglatter_A, context),
                          footerimages(0, 0, 1.92, 0.02, 23.96, 17.67,
                              footerlogoimglatter_W, context),
                          footerimages(0, 0.02, 2.64, 0, 11.31, 17.62,
                              footerlogoimglatter_E, context),
                          footerimages(0, 0.03, 0, 0, 14, 16.62,
                              footerlogoimglatter_N, context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogrouphtavgXo (YA9Vk3ozhfFJN2pKgGHTaV)
                padding:
                    EdgeInsets.fromLTRB(227 * fem, 34 * fem, 0 * fem, 0 * fem),
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // autogroupbv5wat5 (YA9V3z8RCwKwyT8tdYbV5w)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 201 * fem, 1 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          footerboldtext(0, 0, 0, 14, "Quick Links", 16,
                              FontWeight.w700, context),
                          footerbluelane(context)
                        ],
                      ),
                    ),
                    Container(
                      // autogroupfqcu3QH (YA9VBu4uAXmoLfwPLEfQCu)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 179 * fem, 1 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          footerboldtext(0, 0, 0, 14, "Services", 16,
                              FontWeight.w700, context),
                          footerbluelane(context),
                        ],
                      ),
                    ),
                    Container(
                      // autogrouppxhx9rd (YA9VKEC28uusZ186a7pXHX)
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          footerboldtext(0, 0, 0, 14, "Get In Touch", 16,
                              FontWeight.w700, context),
                          footerbluelane(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          // autogroup2bokgk5 (YA9WWShgxFA9c5eijH2BoK)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 29 * fem, 0 * fem),
          width: double.infinity,
          height: 84 * fem,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // themaingoalofmo3awenistohelpyo (2:48)
                constraints: BoxConstraints(
                  maxWidth: 241 * fem,
                ),
                child: Text(
                  'The main goal of Mo3awen is to \nhelp you do your physical therapy.\nIt adds a fun element to the dull \nroutine of working out.',
                  style: safeGoogleFont(
                    'Poppins',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                // autogroupxcvzMzd (YA9XRkWCZvu3LJdXZWXcvZ)
                padding:
                    EdgeInsets.fromLTRB(115 * fem, 0 * fem, 0 * fem, 0 * fem),
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupwaqtfEd (YA9WqWzEwL3UUd7w8swaqT)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 224 * fem, 0 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // excercisesyFK (2:47)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 18 * fem),
                            child: Text(
                              'Excercises',
                              style: safeGoogleFont(
                                'Poppins',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // blogsFyX (2:49)
                            'Blogs',
                            style: safeGoogleFont(
                              'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupmtr9PK3 (YA9WyvutbgBRQKbPNqMtr9)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 134 * fem, 0 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // excercisesVN5 (2:55)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 18 * fem),
                            child: Text(
                              'Excercises',
                              style: safeGoogleFont(
                                'Poppins',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // blogsnMB (2:56)
                            'plans',
                            style: safeGoogleFont(
                              'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupk1fsuwb (YA9X7gByzMPuaiWEESK1fs)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 4 * fem, 24.27 * fem, 0 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // phoneiconcr1 (2:151)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0.52 * fem, 26 * fem),
                            width: 15.2 * fem,
                            height: 20 * fem,
                            child: Image.asset(
                              'assets/page-1/images/phone-icon-L7X.png',
                              width: 15.2 * fem,
                              height: 20 * fem,
                            ),
                          ),
                          Container(
                            // vectoruKK (2:41)
                            width: 17.73 * fem,
                            height: 12 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-oGq.png',
                              width: 17.73 * fem,
                              height: 12 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupg8vbczR (YA9XFRU5P2cPm7R563G8Vb)
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // MSD (2:63)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 18 * fem),
                            child: RichText(
                              text: TextSpan(
                                style: safeGoogleFont(
                                  'Poppins',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff000000),
                                  decorationColor: Color(0xff000000),
                                ),
                                children: [
                                  TextSpan(
                                    text: '(',
                                  ),
                                  TextSpan(
                                    text: '123)-566-76615',
                                    style: safeGoogleFont(
                                      'Poppins',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff000000),
                                      decorationColor: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            // updownstudiosgamesgmailcomgN1 (2:62)
                            'updownstudiosgames@gmail.com\n',
                            style: safeGoogleFont(
                              'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1 * ffem / fem,
                              decoration: TextDecoration.underline,
                              color: Color(0xff000000),
                              decorationColor: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          // autogrouplpffnR3 (YA9Y59bYyy8Yjg4X4pLpfF)
          margin: EdgeInsets.fromLTRB(345 * fem, 0 * fem, 0 * fem, 14 * fem),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // plansshP (2:50)
                margin:
                    EdgeInsets.fromLTRB(5 * fem, 0 * fem, 263 * fem, 4 * fem),
                child: Text(
                  'Plans',
                  style: safeGoogleFont(
                    'Poppins',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                // vector4G5 (2:40)
                margin: EdgeInsets.fromLTRB(
                    210 * fem, 4.9 * fem, 26.63 * fem, 0 * fem),
                width: 12.37 * fem,
                height: 20 * fem,
                child: Image.asset(
                  'assets/page-1/images/vector-P1X.png',
                  width: 12.37 * fem,
                  height: 20 * fem,
                ),
              ),
              Container(
                // alfaisaluniversityriyadhsaudia (2:54)
                margin: EdgeInsets.fromLTRB(0 * fem, 4 * fem, 0 * fem, 0 * fem),
                child: Text(
                  'Alfaisal university, Riyadh, Saudi Arabia',
                  style: safeGoogleFont(
                    'Poppins',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          // autogroupxh332cD (YA9YJosTXE2W3P62U3xH33)
          margin: EdgeInsets.fromLTRB(350 * fem, 0 * fem, 0 * fem, 6 * fem),
          height: 66 * fem,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroup1lgdX3B (YA9YYPKAn2JmkgAhwk1LGD)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 218 * fem, 0 * fem),
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // aboutusECV (2:51)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 18 * fem),
                      child: Text(
                        'About us',
                        style: safeGoogleFont(
                          'Poppins',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Text(
                      // contactusidT (2:52)
                      'Contact us',
                      style: safeGoogleFont(
                        'Poppins',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // facebookcoloredsvgrepocom13ZnV (2:74)
                margin:
                    EdgeInsets.fromLTRB(260 * fem, 6 * fem, 35 * fem, 0 * fem),
                width: 32 * fem,
                height: 32 * fem,
                child: Image.asset(
                  'assets/page-1/images/facebook-colored-svgrepo-com-1-3.png',
                  width: 32 * fem,
                  height: 32 * fem,
                ),
              ),
              Container(
                // instagramcoloredsvgrepocom13Sb (2:69)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 6 * fem, 35 * fem, 0 * fem),
                width: 32 * fem,
                height: 32 * fem,
                child: Image.asset(
                  'assets/page-1/images/instagram-colored-svgrepo-com-1-3.png',
                  width: 32 * fem,
                  height: 32 * fem,
                ),
              ),
              Container(
                // youtubecoloredsvgrepocom3K9P (2:64)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 6 * fem, 35 * fem, 0 * fem),
                width: 32 * fem,
                height: 22.64 * fem,
                child: Image.asset(
                  'assets/page-1/images/youtube-colored-svgrepo-com-3.png',
                  width: 32 * fem,
                  height: 22.64 * fem,
                ),
              ),
              Container(
                // twittercoloredsvgrepocom13yDw (2:67)
                margin: EdgeInsets.fromLTRB(0 * fem, 6 * fem, 0 * fem, 0 * fem),
                width: 32 * fem,
                height: 26.2 * fem,
                child: Image.asset(
                  'assets/page-1/images/twitter-colored-svgrepo-com-1-3.png',
                  width: 32 * fem,
                  height: 26.2 * fem,
                ),
              ),
            ],
          ),
        ),
        Container(
          // updownstudioSNR (2:53)
          margin: EdgeInsets.fromLTRB(775 * fem, 0 * fem, 0 * fem, 78 * fem),
          child: Text(
            'UPDOWN STUDIO',
            style: safeGoogleFont(
              'Poppins',
              fontSize: 18 * ffem,
              fontWeight: FontWeight.w500,
              height: 1.5 * ffem / fem,
              letterSpacing: 1.17 * fem,
              color: Color(0xff000000),
            ),
          ),
        ),
        Container(
          // mo3awenallrightsreservedKBK (2:60)
          margin: EdgeInsets.fromLTRB(44 * fem, 0 * fem, 0 * fem, 0 * fem),
          child: Text(
            '© 2022 MO3AWEN. All rights reserved.',
            style: safeGoogleFont(
              'Poppins',
              fontSize: 14 * ffem,
              fontWeight: FontWeight.w400,
              height: 1.5 * ffem / fem,
              color: Color(0xff000000),
            ),
          ),
        ),
      ],
    ),
  );
}

// a widget that takes 6 integers and 1 string and returns a container
Widget footerimages(double left, double top, double right, double bottom,
    double width, double height, String image, BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin:
        EdgeInsets.fromLTRB(left * fem, top * fem, right * fem, bottom * fem),
    width: width * fem,
    height: height * fem,
    child: Image.asset(
      image,
      width: width * fem,
      height: height * fem,
    ),
  );
}

// a widget call footerboldtext that takes 4 doubles and 1 string and returns a container
Widget footerboldtext(double left, double top, double right, double bottom,
    String text, double fontSize, FontWeight fontWeight, BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin:
        EdgeInsets.fromLTRB(left * fem, top * fem, right * fem, bottom * fem),
    child: Text(text, style: footerBoldText(fontSize, fontWeight, context)),
  );
}

// a widget called footerbluelane that returns a container
Widget footerbluelane(BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    width: 60 * fem,
    height: 5 * fem,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4 * fem),
      color: Color(0xff2774b4),
    ),
  );
}
