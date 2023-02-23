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
    // physicaltherapyhomepagekKC (1:27)
    width: double.infinity,
    height: 1186 * fem,
    decoration: BoxDecoration(
      color: Color(0xffffffff),
    ),
    child: Stack(
      children: [
        Positioned(
          // crossrectangle2Gi (9:50)
          left: 0 * fem,
          top: 0 * fem,
          child: Align(
            child: SizedBox(
              width: 1441 * fem,
              height: 890 * fem,
              child:
                  // ignore: cross-rectangle
                  Image.asset(
                'assets/page-1/images/cross-rectangle.png',
                width: 1441 * fem,
                height: 890 * fem,
              ),
            ),
          ),
        ),
        Positioned(
          // rectanglecontactusHyL (9:51)
          left: 740 * fem,
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
          // rectangle349Vk (9:52)
          left: 84 * fem,
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
          // visitusexJ (9:53)
          left: 84 * fem,
          top: 45 * fem,
          child: Align(
            child: SizedBox(
              width: 163 * fem,
              height: 60 * fem,
              child: Text(
                'VISIT US',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // contactusY26 (9:54)
          left: 969 * fem,
          top: 225 * fem,
          child: Align(
            child: SizedBox(
              width: 156 * fem,
              height: 36 * fem,
              child: Text(
                'CONTACT US',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // namedJS (9:55)
          left: 820 * fem,
          top: 309 * fem,
          child: Align(
            child: SizedBox(
              width: 52 * fem,
              height: 24 * fem,
              child: Text(
                'Name:',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // alfaisaluniversityriyadhsaudia (9:56)
          left: 86 * fem,
          top: 279 * fem,
          child: Align(
            child: SizedBox(
              width: 282 * fem,
              height: 72 * fem,
              child: RichText(
                text: TextSpan(
                  style: WebTextStyles.home_widgets_Text,
                  children: [
                    TextSpan(
                      text: 'Alfaisal university\nRiyadh, Saudi Arabia\n',
                    ),
                    TextSpan(
                      text: 'updownstudiosgames@gmail.com\n',
                      style: WebTextStyles.home_widgets_Text,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // emailxtS (9:57)
          left: 820 * fem,
          top: 419 * fem,
          child: Align(
            child: SizedBox(
              width: 47 * fem,
              height: 24 * fem,
              child: Text(
                'Email:',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // subjectTKQ (9:58)
          left: 820 * fem,
          top: 529 * fem,
          child: Align(
            child: SizedBox(
              width: 64 * fem,
              height: 24 * fem,
              child: Text(
                'Subject:',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // messagek3c (9:59)
          left: 820 * fem,
          top: 639 * fem,
          child: Align(
            child: SizedBox(
              width: 76 * fem,
              height: 24 * fem,
              child: Text(
                'Message:',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle35Sx2 (9:60)
          left: 820 * fem,
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
          // rectangle36a2e (9:61)
          left: 820 * fem,
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
          // rectangle37GgA (9:62)
          left: 820 * fem,
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
          // rectangle38CZp (9:63)
          left: 820 * fem,
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
          // rectangle39LAE (9:64)
          left: 1060 * fem,
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
          // enteryournameGZg (9:65)
          left: 881 * fem,
          top: 355 * fem,
          child: Align(
            child: SizedBox(
              width: 132 * fem,
              height: 24 * fem,
              child: Text(
                'Enter your name',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // enteryouremailBRk (9:66)
          left: 881 * fem,
          top: 465 * fem,
          child: Align(
            child: SizedBox(
              width: 130 * fem,
              height: 24 * fem,
              child: Text(
                'Enter your email',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // enteryoursubject5X8 (9:67)
          left: 881 * fem,
          top: 575 * fem,
          child: Align(
            child: SizedBox(
              width: 143 * fem,
              height: 24 * fem,
              child: Text(
                'Enter your subject',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // enteryourmessagezPC (9:68)
          left: 881 * fem,
          top: 685 * fem,
          child: Align(
            child: SizedBox(
              width: 159 * fem,
              height: 24 * fem,
              child: Text(
                'Enter your message',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // submit6h8 (9:69)
          left: 1134 * fem,
          top: 853 * fem,
          child: Align(
            child: SizedBox(
              width: 67 * fem,
              height: 27 * fem,
              child: Text(
                'SUBMIT',
                style: WebTextStyles.home_widgets_Text,
              ),
            ),
          ),
        ),
        Positioned(
          // map11p6 (9:70)
          left: 87 * fem,
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
