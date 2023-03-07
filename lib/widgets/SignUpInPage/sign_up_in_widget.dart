// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class SignUpIn extends StatelessWidget {
  const SignUpIn({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = textStyle(
      context,
      'poppins',
      44,
      FontWeight.w700,
      1.5,
      0,
      Color(0xff0076f9),
    );
    TextStyle normalStyle = textStyle(
      context,
      'poppins',
      20,
      FontWeight.w400,
      1.5,
      0,
      Color(0xff000000),
    );
    TextStyle smallStyle = textStyle(
      context,
      'poppins',
      14,
      FontWeight.w400,
      1.5,
      0,
      Color(0xff000000),
    );

    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
      ),
      child: Row(
        children: [
          /* bg and logo images */
          Container(
            padding:
                EdgeInsets.fromLTRB(85 * fem, 42 * fem, 85 * fem, 42 * fem),
            width: 618 * fem,
            height: 1024 * fem,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: baseWidth < 1440 ? BoxFit.fitWidth : BoxFit.cover,
                image: AssetImage(
                  signbgimg,
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 126 * fem,
                height: 81 * fem,
                child: Image.asset(
                  signlogoimg,
                ),
              ),
            ),
          ),
          Container(
            padding:
                EdgeInsets.fromLTRB(161 * fem, 41 * fem, 45 * fem, 41 * fem),
            width: 822 * fem,
            height: 1024 * fem,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Container(
              width: double.infinity,
              height: 795 * fem,
              // color
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      signcloseicon,
                      width: 30 * fem,
                      height: 30 * fem,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 116 * fem, 0 * fem),
                    width: 500 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupghpvKCE (T8XNEeXJKDTytAREzgHpv)
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              textContainer(
                                context,
                                0,
                                0,
                                0,
                                21,
                                'Create Account',
                                titleStyle,
                              ),
                              textContainer(
                                context,
                                0,
                                0,
                                0,
                                30,
                                'Use your email  for registration.',
                                normalStyle,
                              ),
                              Container(
                                width: 678 * fem,
                                height: 45 * fem,
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 20 * fem),
                                decoration: BoxDecoration(
                                  color: Color(0xffe2e2e2),
                                  borderRadius: BorderRadius.circular(
                                    3 * fem,
                                  ),
                                ),
                                child: TextField(
                                  obscureText: false,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Name',
                                      hintStyle: smallStyle,
                                      contentPadding: EdgeInsets.only(
                                        left: 20,
                                      )),
                                ),
                              ),
                              // empty container for spacing
                              Container(
                                height: 20 * fem,
                              ),
                              Container(
                                // bg color 0xffe2e2e2
                                width: 678 * fem,
                                height: 45 * fem,
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 20 * fem),
                                decoration: BoxDecoration(
                                  color: Color(0xffe2e2e2),
                                  borderRadius: BorderRadius.circular(
                                    3 * fem,
                                  ),
                                ),
                                child: TextField(
                                  obscureText: false,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email',
                                      hintStyle: smallStyle,
                                      contentPadding: EdgeInsets.only(
                                        left: 20,
                                      )),
                                ),
                              ),
                              // empty container for spacing
                              Container(
                                height: 20 * fem,
                              ),
                              Container(
                                // bg color 0xffe2e2e2
                                width: 678 * fem,
                                height: 45 * fem,
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 20 * fem),
                                decoration: BoxDecoration(
                                  color: Color(0xffe2e2e2),
                                  borderRadius: BorderRadius.circular(
                                    3 * fem,
                                  ),
                                ),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                      hintStyle: smallStyle,
                                      contentPadding: EdgeInsets.only(
                                        left: 20,
                                      )),
                                ),
                              ),
                              // textfiled for email bg color 0xffe2e2e2 and hint text 'Email'
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// widget takes ltrb, text, and textStyle as input and returns a container
Widget textContainer(BuildContext context, double left, double top,
    double right, double bottom, String text, TextStyle textStyle) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin:
        EdgeInsets.fromLTRB(left * fem, top * fem, right * fem, bottom * fem),
    child: Text(
      text,
      style: textStyle,
    ),
  );
}

// create a method that returns name, email, password, and confirm password text fields
Widget textFields(
    BuildContext context,
    double left,
    double top,
    double right,
    double bottom,
    double width,
    double height,
    String hintText,
    bool obscureText,
    bool isEmail,
    bool isPassword,
    bool isConfirmPassword) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin:
        EdgeInsets.fromLTRB(left * fem, top * fem, right * fem, bottom * fem),
    width: width * fem,
    height: height * fem,
    decoration: BoxDecoration(
      color: Color(0xffffffff),
      borderRadius: BorderRadius.circular(32 * fem),
      boxShadow: [
        BoxShadow(
          color: Color(0x3f000000),
          offset: Offset(0 * fem, 4 * fem),
          blurRadius: 7 * fem,
        ),
      ],
    ),
    child: TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xff000000),
        ),
      ),
    ),
  );
}
