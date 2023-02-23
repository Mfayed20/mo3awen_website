// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../utils/styles.dart';

class VisitUs extends StatelessWidget {
  const VisitUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return visitUs(context);
  }
}

Widget visitUs(BuildContext context) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Container(
    // autogrouptuj17jj (YA9S9z81qNS4EjWKb4tUJ1)
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 54 * fem),
    width: 1441 * fem,
    height: 961 * fem,
    child: Stack(
      children: [
        Positioned(
          // crossrectangleAi1 (2:130)
          left: 0 * fem,
          top: 0 * fem,
          child: Align(
            child: SizedBox(
              width: 1441 * fem,
              height: 890 * fem,
              child: Image.asset(
                'assets/page-1/images/cross-rectangle.png',
                width: 1441 * fem,
                height: 890 * fem,
              ),
            ),
          ),
        ),
        Positioned(
          // rectanglecontactus2kD (2:131)
          left: 739 * fem,
          top: 175 * fem,
          child: Align(
            child: SizedBox(
              width: 614 * fem,
              height: 786 * fem,
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
          // rectangle34GuT (2:132)
          left: 83 * fem,
          top: 117 * fem,
          child: Align(
            child: SizedBox(
              width: 100 * fem,
              height: 9 * fem,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4 * fem),
                  color: Color(0xff0076f9),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // visitusY6H (2:133)
          left: 83 * fem,
          top: 45 * fem,
          child: Align(
            child: SizedBox(
              width: 163 * fem,
              height: 60 * fem,
              child: Text(
                'VISIT US',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 40 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // contactusoH7 (2:134)
          left: 968 * fem,
          top: 225 * fem,
          child: Align(
            child: SizedBox(
              width: 156 * fem,
              height: 36 * fem,
              child: Text(
                'CONTACT US',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff0076f9),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // namerWH (2:135)
          left: 819 * fem,
          top: 309 * fem,
          child: Align(
            child: SizedBox(
              width: 52 * fem,
              height: 24 * fem,
              child: Text(
                'Name:',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // alfaisaluniversityriyadhsaudia (2:136)
          left: 85 * fem,
          top: 279 * fem,
          child: Align(
            child: SizedBox(
              width: 282 * fem,
              height: 72 * fem,
              child: RichText(
                text: TextSpan(
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Alfaisal university\nRiyadh, Saudi Arabia\n',
                    ),
                    TextSpan(
                      text: 'updownstudiosgames@gmail.com\n',
                      style: SafeGoogleFont(
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
          ),
        ),
        Positioned(
          // emailAhK (2:137)
          left: 819 * fem,
          top: 419 * fem,
          child: Align(
            child: SizedBox(
              width: 47 * fem,
              height: 24 * fem,
              child: Text(
                'Email:',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // subjectdL1 (2:138)
          left: 819 * fem,
          top: 529 * fem,
          child: Align(
            child: SizedBox(
              width: 64 * fem,
              height: 24 * fem,
              child: Text(
                'Subject:',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // message5C1 (2:139)
          left: 819 * fem,
          top: 639 * fem,
          child: Align(
            child: SizedBox(
              width: 76 * fem,
              height: 24 * fem,
              child: Text(
                'Message:',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle35Ltd (2:140)
          left: 819 * fem,
          top: 337 * fem,
          child: Align(
            child: SizedBox(
              width: 454 * fem,
              height: 60 * fem,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffe2e2e2),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle36Ez1 (2:141)
          left: 819 * fem,
          top: 447 * fem,
          child: Align(
            child: SizedBox(
              width: 454 * fem,
              height: 60 * fem,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffe2e2e2),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle37M33 (2:142)
          left: 819 * fem,
          top: 557 * fem,
          child: Align(
            child: SizedBox(
              width: 454 * fem,
              height: 60 * fem,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffe2e2e2),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle38EsX (2:143)
          left: 819 * fem,
          top: 667 * fem,
          child: Align(
            child: SizedBox(
              width: 454 * fem,
              height: 119 * fem,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffe2e2e2),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle39YtD (2:144)
          left: 1059 * fem,
          top: 836 * fem,
          child: Align(
            child: SizedBox(
              width: 214 * fem,
              height: 60 * fem,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff0076f9),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // enteryourname45s (2:145)
          left: 880 * fem,
          top: 355 * fem,
          child: Align(
            child: SizedBox(
              width: 132 * fem,
              height: 24 * fem,
              child: Text(
                'Enter your name',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0x7f000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // enteryouremail7K3 (2:146)
          left: 880 * fem,
          top: 465 * fem,
          child: Align(
            child: SizedBox(
              width: 130 * fem,
              height: 24 * fem,
              child: Text(
                'Enter your email',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0x7f000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // enteryoursubjectYfF (2:147)
          left: 880 * fem,
          top: 575 * fem,
          child: Align(
            child: SizedBox(
              width: 143 * fem,
              height: 24 * fem,
              child: Text(
                'Enter your subject',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0x7f000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // enteryourmessageQSZ (2:148)
          left: 880 * fem,
          top: 685 * fem,
          child: Align(
            child: SizedBox(
              width: 159 * fem,
              height: 24 * fem,
              child: Text(
                'Enter your message',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0x7f000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // submitGjf (2:149)
          left: 1133 * fem,
          top: 853 * fem,
          child: Align(
            child: SizedBox(
              width: 67 * fem,
              height: 27 * fem,
              child: Text(
                'SUBMIT',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 18 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5 * ffem / fem,
                  color: Color(0x7f000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // map1w57 (2:150)
          left: 86 * fem,
          top: 367 * fem,
          child: Align(
            child: SizedBox(
              width: 575 * fem,
              height: 392 * fem,
              child: Image.asset(
                'assets/page-1/images/map-1-dwK.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
