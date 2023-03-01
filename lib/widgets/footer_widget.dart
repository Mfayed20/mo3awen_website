// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

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
                    Container(
                      // vectorh6D (2:85)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 6.13 * fem),
                      width: 84.06 * fem,
                      height: 56.5 * fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-733.png',
                        width: 84.06 * fem,
                        height: 56.5 * fem,
                      ),
                    ),
                    Container(
                      // groupn7f (2:77)
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectori1K (2:78)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0.03 * fem, 2.64 * fem, 0 * fem),
                            width: 18.82 * fem,
                            height: 17.62 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-Ya9.png',
                              width: 18.82 * fem,
                              height: 17.62 * fem,
                            ),
                          ),
                          Container(
                            // vector61s (2:79)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0.07 * fem, 1.44 * fem, 0 * fem),
                            width: 18.15 * fem,
                            height: 18.29 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-rQ5.png',
                              width: 18.15 * fem,
                              height: 18.29 * fem,
                            ),
                          ),
                          Container(
                            // vectorybT (2:80)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1.18 * fem, 0.02 * fem),
                            width: 12.63 * fem,
                            height: 18.34 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-Fkh.png',
                              width: 12.63 * fem,
                              height: 18.34 * fem,
                            ),
                          ),
                          Container(
                            // vector58h (2:81)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0.02 * fem, 0.41 * fem, 0 * fem),
                            width: 15.91 * fem,
                            height: 17.62 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-Hss.png',
                              width: 15.91 * fem,
                              height: 17.62 * fem,
                            ),
                          ),
                          Container(
                            // vectorNNh (2:82)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1.92 * fem, 0.02 * fem),
                            width: 23.96 * fem,
                            height: 17.67 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector.png',
                              width: 23.96 * fem,
                              height: 17.67 * fem,
                            ),
                          ),
                          Container(
                            // vectorGDB (2:83)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0.02 * fem, 2.64 * fem, 0 * fem),
                            width: 11.31 * fem,
                            height: 17.62 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-s41.png',
                              width: 11.31 * fem,
                              height: 17.62 * fem,
                            ),
                          ),
                          Container(
                            // vectoraUm (2:84)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0.03 * fem, 0 * fem, 0 * fem),
                            width: 14 * fem,
                            height: 16.62 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-guK.png',
                              width: 15 * fem,
                              height: 17.62 * fem,
                            ),
                          ),
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
                          Container(
                            // quicklinkstds (2:42)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 14 * fem),
                            child: Text(
                              'Quick Links',
                              style: safeGoogleFont(
                                'Poppins',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // rectangle4Xwj (2:43)
                            width: 60 * fem,
                            height: 5 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4 * fem),
                              color: Color(0xff2774b4),
                            ),
                          ),
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
                          Container(
                            // servicesMA5 (2:44)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 14 * fem),
                            child: Text(
                              'Services',
                              style: safeGoogleFont(
                                'Poppins',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // rectangle6qL9 (2:45)
                            width: 60 * fem,
                            height: 5 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4 * fem),
                              color: Color(0xff2774b4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogrouppxhx9rd (YA9VKEC28uusZ186a7pXHX)
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // getintouchgrZ (2:46)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 15 * fem),
                            child: Text(
                              'Get In Touch',
                              style: safeGoogleFont(
                                'Poppins',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // rectangle5mt1 (2:61)
                            width: 60 * fem,
                            height: 5 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4 * fem),
                              color: Color(0xff2774b4),
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
