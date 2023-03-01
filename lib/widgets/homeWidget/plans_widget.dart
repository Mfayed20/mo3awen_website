// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
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
  double ffem = fem * 0.97;
  return Container(
    // autogroupmths5Bb (YA9RAGHCBN5z4dRipzmtHs)
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 46 * fem),
    width: double.infinity,
    height: 851 * fem,
    child: Stack(
      children: [
        Positioned(
          // plansimagevi1 (2:4)
          left: 0 * fem,
          top: 162 * fem,
          child: Align(
            child: SizedBox(
              width: 1440 * fem,
              height: 688 * fem,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/page-1/images/plans-image-bg-ART.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // plansimagems3 (2:5)
          left: 0 * fem,
          top: 163 * fem,
          child: Align(
            child: SizedBox(
              width: 1440 * fem,
              height: 688 * fem,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0x4c000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle16AuB (2:36)
          left: 85 * fem,
          top: 72 * fem,
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
          // plansd25 (2:95)
          left: 85 * fem,
          top: 0 * fem,
          child: Align(
            child: SizedBox(
              width: 142 * fem,
              height: 60 * fem,
              child: Text(
                'PLANS',
                style: safeGoogleFont(
                  'Poppins',
                  fontSize: 40 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * ffem / fem,
                  letterSpacing: 2.6 * fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle19H6d (2:98)
          left: 512 * fem,
          top: 8 * fem,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 25 * fem,
                sigmaY: 25 * fem,
              ),
              child: Align(
                child: SizedBox(
                  width: 414 * fem,
                  height: 580 * fem,
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
          // rectangle256pm (2:99)
          left: 941 * fem,
          top: 216 * fem,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 25 * fem,
                sigmaY: 25 * fem,
              ),
              child: Align(
                child: SizedBox(
                  width: 414 * fem,
                  height: 580 * fem,
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
          // rectangle29mvu (2:100)
          left: 86 * fem,
          top: 216 * fem,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 25 * fem,
                sigmaY: 25 * fem,
              ),
              child: Align(
                child: SizedBox(
                  width: 414 * fem,
                  height: 580 * fem,
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
          // 37j (2:101)
          left: 613 * fem,
          top: 201 * fem,
          child: Center(
            child: Align(
              child: SizedBox(
                width: 212 * fem,
                height: 97 * fem,
                child: Text(
                  '9000',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 80 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff4098fb),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // riyalVVX (2:102)
          left: 811 * fem,
          top: 213.5 * fem,
          child: Align(
            child: SizedBox(
              width: 70 * fem,
              height: 37 * fem,
              child: Text(
                'Riyal',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 30 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // yearx1j (2:103)
          left: 667 * fem,
          top: 73.5 * fem,
          child: Align(
            child: SizedBox(
              width: 103 * fem,
              height: 37 * fem,
              child: Text(
                '1 YEAR',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 30 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff0076f9),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // validforoneyearaYu (2:104)
          left: 619 * fem,
          top: 350.5 * fem,
          child: Align(
            child: SizedBox(
              width: 201 * fem,
              height: 30 * fem,
              child: Text(
                'Valid for one year',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // discountcVb (2:105)
          left: 644 * fem,
          top: 140.5 * fem,
          child: Align(
            child: SizedBox(
              width: 155 * fem,
              height: 30 * fem,
              child: Text(
                '10% Discount',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle244sP (2:106)
          left: 611 * fem,
          top: 451 * fem,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 25 * fem,
              sigmaY: 25 * fem,
            ),
            child: Align(
              child: SizedBox(
                width: 216 * fem,
                height: 60 * fem,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0x66000000),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle227am (2:107)
          left: 594 * fem,
          top: 433 * fem,
          child: Align(
            child: SizedBox(
              width: 250 * fem,
              height: 60 * fem,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff000000)),
                  color: Color(0xff0076f9),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // selectPYH (2:108)
          left: 679 * fem,
          top: 450.5 * fem,
          child: Align(
            child: SizedBox(
              width: 81 * fem,
              height: 25 * fem,
              child: Text(
                'SELECT',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2125 * ffem / fem,
                  letterSpacing: 0.8 * fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle203sj (2:109)
          left: 940 * fem,
          top: 216 * fem,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 25 * fem,
                sigmaY: 25 * fem,
              ),
              child: Align(
                child: SizedBox(
                  width: 415 * fem,
                  height: 580 * fem,
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
          // u9F (2:110)
          left: 1022 * fem,
          top: 409 * fem,
          child: Center(
            child: Align(
              child: SizedBox(
                width: 251 * fem,
                height: 97 * fem,
                child: Text(
                  '16000',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 80 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff4098fb),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // riyalNHj (2:111)
          left: 1258 * fem,
          top: 418.5 * fem,
          child: Align(
            child: SizedBox(
              width: 70 * fem,
              height: 37 * fem,
              child: Text(
                'Riyal',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 30 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // yearnMT (2:112)
          left: 1094 * fem,
          top: 281.5 * fem,
          child: Center(
            child: Align(
              child: SizedBox(
                width: 107 * fem,
                height: 37 * fem,
                child: Text(
                  '2 YEAR',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 30 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff0076f9),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // validfortwoyearLGV (2:113)
          left: 1048 * fem,
          top: 558.5 * fem,
          child: Center(
            child: Align(
              child: SizedBox(
                width: 201 * fem,
                height: 30 * fem,
                child: Text(
                  'Valid for two year',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 24 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // discount8y3 (2:114)
          left: 1071 * fem,
          top: 348.5 * fem,
          child: Center(
            child: Align(
              child: SizedBox(
                width: 159 * fem,
                height: 30 * fem,
                child: Text(
                  '20% Discount',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 24 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle26jxq (2:115)
          left: 1040 * fem,
          top: 659 * fem,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 25 * fem,
              sigmaY: 25 * fem,
            ),
            child: Align(
              child: SizedBox(
                width: 216 * fem,
                height: 60 * fem,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0x66000000),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle27bEM (2:116)
          left: 1023 * fem,
          top: 641 * fem,
          child: Align(
            child: SizedBox(
              width: 250 * fem,
              height: 60 * fem,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff000000)),
                  color: Color(0xff0076f9),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // selectH7B (2:117)
          left: 1108 * fem,
          top: 658.5 * fem,
          child: Align(
            child: SizedBox(
              width: 81 * fem,
              height: 25 * fem,
              child: Text(
                'SELECT',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2125 * ffem / fem,
                  letterSpacing: 0.8 * fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle28Y37 (2:118)
          left: 960 * fem,
          top: 235 * fem,
          child: Align(
            child: SizedBox(
              width: 376 * fem,
              height: 542 * fem,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff000000)),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle23cHs (2:119)
          left: 531 * fem,
          top: 27 * fem,
          child: Align(
            child: SizedBox(
              width: 376 * fem,
              height: 542 * fem,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff000000)),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle30ekM (2:120)
          left: 85 * fem,
          top: 216 * fem,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 25 * fem,
                sigmaY: 25 * fem,
              ),
              child: Align(
                child: SizedBox(
                  width: 415 * fem,
                  height: 580 * fem,
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
          // uRP (2:121)
          left: 187 * fem,
          top: 409 * fem,
          child: Center(
            child: Align(
              child: SizedBox(
                width: 211 * fem,
                height: 97 * fem,
                child: Text(
                  '5000',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 80 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff4098fb),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // riyalaGd (2:122)
          left: 383 * fem,
          top: 418.5 * fem,
          child: Align(
            child: SizedBox(
              width: 70 * fem,
              height: 37 * fem,
              child: Text(
                'Riyal',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 30 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // monthEry (2:123)
          left: 221 * fem,
          top: 281.5 * fem,
          child: Center(
            child: Align(
              child: SizedBox(
                width: 142 * fem,
                height: 37 * fem,
                child: Text(
                  '6 MONTH',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 30 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff0076f9),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // validfor6month6eH (2:124)
          left: 195 * fem,
          top: 558.5 * fem,
          child: Center(
            child: Align(
              child: SizedBox(
                width: 197 * fem,
                height: 30 * fem,
                child: Text(
                  'Valid for 6 month',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 24 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // discountYmB (2:125)
          left: 224 * fem,
          top: 348.5 * fem,
          child: Center(
            child: Align(
              child: SizedBox(
                width: 143 * fem,
                height: 30 * fem,
                child: Text(
                  '5% Discount',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 24 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle31cm3 (2:126)
          left: 185 * fem,
          top: 659 * fem,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 25 * fem,
              sigmaY: 25 * fem,
            ),
            child: Align(
              child: SizedBox(
                width: 216 * fem,
                height: 60 * fem,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0x66000000),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle32HsB (2:127)
          left: 168 * fem,
          top: 641 * fem,
          child: Align(
            child: SizedBox(
              width: 250 * fem,
              height: 60 * fem,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff000000)),
                  color: Color(0xff0076f9),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // selecto4q (2:128)
          left: 253 * fem,
          top: 658.5 * fem,
          child: Align(
            child: SizedBox(
              width: 81 * fem,
              height: 25 * fem,
              child: Text(
                'SELECT',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2125 * ffem / fem,
                  letterSpacing: 0.8 * fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // rectangle33rYu (2:129)
          left: 105 * fem,
          top: 235 * fem,
          child: Align(
            child: SizedBox(
              width: 376 * fem,
              height: 542 * fem,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff000000)),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
