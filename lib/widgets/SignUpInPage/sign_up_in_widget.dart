// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
    TextStyle bttnTextStyle = textStyle(
      context,
      "Poppins",
      18,
      FontWeight.w400,
      1.5,
      0,
      const Color(0xff000000),
    );

    TextEditingController firstNameController = TextEditingController();
    TextEditingController lasttNameController = TextEditingController();
    TextEditingController dataOfBirthController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController nationalityController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

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
                                'Use your email for registration.',
                                normalStyle,
                              ),
                              signUpInTextFiled(
                                  context, firstNameController, 'First Name'),
                              signUpInTextFiled(
                                  context, lasttNameController, 'Last Name'),
                              signUpInTextFiled(context, dataOfBirthController,
                                  'Data of Birth'),
                              signUpInTextFiled(context, nationalityController,
                                  'Nationality'),
                              signUpInTextFiled(
                                  context, emailController, 'Email'),
                              signUpInTextFiled(
                                  context, passwordController, 'Password'),
                              textContainer(
                                context,
                                0,
                                0,
                                0,
                                30,
                                '------- Or join us with your social accounts -------',
                                normalStyle,
                              ),
                              Container(
                                height: 100 * fem,
                              ),
                              elevatedBttnPositioned(
                                context,
                                1059,
                                836,
                                214,
                                60,
                                const Color(0xff0076f9),
                                Colors.transparent,
                                0,
                                3,
                                getTextFieldData(
                                  firstNameController,
                                  lasttNameController,
                                  dataOfBirthController,
                                  nationalityController,
                                  emailController,
                                  passwordController,
                                ),
                                'SIGN UP',
                                bttnTextStyle,
                              ),
                              // contener with a row of text and a text button
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    textContainer(
                                      context,
                                      0,
                                      0,
                                      0,
                                      0,
                                      'Already have an account?',
                                      normalStyle,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: textContainer(
                                        context,
                                        0,
                                        0,
                                        0,
                                        0,
                                        'Sign In',
                                        normalStyle,
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

Widget signUpInTextFiled(
    BuildContext context, TextEditingController textController, String text) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;

  TextStyle hintTextStyle = textStyle(
    context,
    "Poppins",
    18,
    FontWeight.w400,
    1.5,
    0,
    const Color(0xff000000),
  );
  return Container(
    width: 678 * fem,
    height: 45 * fem,
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 35 * fem),
    decoration: BoxDecoration(
      color: Color(0xffe2e2e2),
      borderRadius: BorderRadius.circular(
        3 * fem,
      ),
    ),
    child: TextField(
      obscureText: false,
      controller: textController,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffe2e2e2)),
          borderRadius: BorderRadius.circular(3),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffe2e2e2)),
          borderRadius: BorderRadius.circular(3),
        ),
        hintStyle: hintTextStyle,
        contentPadding: EdgeInsets.only(
          left: 20,
        ),
      ),
    ),
  );
}

getTextFieldData(
    TextEditingController firstNameController,
    TextEditingController lasttNameController,
    TextEditingController dataOfBirthController,
    TextEditingController nationalityController,
    TextEditingController emailController,
    TextEditingController passwordController) {
  return () {
    String firstName = firstNameController.text;
    String lastName = lasttNameController.text;
    String dataOfBrith = dataOfBirthController.text;
    String nationality = nationalityController.text;
    String email = emailController.text;
    String password = passwordController.text;

    if (firstName.isEmpty |
        lastName.isEmpty |
        dataOfBrith.isEmpty |
        nationality.isEmpty |
        email.isEmpty |
        password.isEmpty) {
      Fluttertoast.showToast(
        msg: 'Please fill all the fields',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return;
    } else {
      firstNameController.clear();
      lasttNameController.clear();
      dataOfBirthController.clear();
      nationalityController.clear();
      emailController.clear();
      passwordController.clear();

      Fluttertoast.showToast(
        msg: 'Thank you for registering with us',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  };
}
