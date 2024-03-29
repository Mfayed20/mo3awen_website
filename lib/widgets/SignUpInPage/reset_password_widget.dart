import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import '../../pages/signIn/sign_up_page.dart';
import '../../utils/constants.dart';

// Main SignIn widget
class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  ResetPasswordState createState() => ResetPasswordState();
}

class ResetPasswordState extends State<ResetPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidthRatio = screenWidth / baseWidth;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
      ),
      child: Row(
        children: [
          buildBackgroundAndLogo(context, screenWidthRatio),
          Expanded(
            child: Align(
              alignment:
                  screenWidth < 600 ? Alignment.topCenter : Alignment.center,
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: screenHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: screenWidth < 600
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        buildSignInForm(
                            context, screenWidthRatio, emailController),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
}

// Background and logo container
Widget buildBackgroundAndLogo(BuildContext context, double screenWidthRatio) {
  double screenHeight = MediaQuery.of(context).size.height;
  return Container(
    padding: EdgeInsets.fromLTRB(85 * screenWidthRatio, 42 * screenWidthRatio,
        85 * screenWidthRatio, 42 * screenWidthRatio),
    width: 618 * screenWidthRatio,
    height: screenHeight,
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          signbgimg,
        ),
      ),
    ),
    child: Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        width: 126 * screenWidthRatio,
        height: 81 * screenWidthRatio,
        child: Image.asset(
          signlogoimg,
        ),
      ),
    ),
  );
}

Widget buildSignInForm(
    BuildContext context, double screenWidthRatio, emailController) {
  double screenHeight = MediaQuery.of(context).size.height;
  TextStyle titleStyle = buildTextStyle(
      context, 'poppins', 44, FontWeight.w700, 1.5, 0, const Color(0xff0076f9));
  TextStyle normalStyle = buildTextStyle(
      context, 'poppins', 20, FontWeight.w400, 1.5, 0, const Color(0xff000000));
  TextStyle bttnTextStyle = buildTextStyle(
      context, "Poppins", 18, FontWeight.w400, 1.5, 0, const Color(0xff000000));

  return Expanded(
    child: Container(
      padding: EdgeInsets.fromLTRB(45 * screenWidthRatio, 41 * screenWidthRatio,
          45 * screenWidthRatio, 41 * screenWidthRatio),
      height: screenHeight,
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                buildCloseButton(context, screenWidthRatio),
                buildFormContent(context, screenWidthRatio, emailController,
                    titleStyle, normalStyle, bttnTextStyle),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

// Close button
Widget buildCloseButton(BuildContext context, double screenWidthRatio) {
  const double maxIconSize = 30.0;
  double iconSize = min(30 * screenWidthRatio, maxIconSize);

  return Align(
    alignment: Alignment.topRight,
    child: FloatingActionButton(
      mini: true,
      onPressed: () {
        Navigator.pop(context);
      },
      backgroundColor: const Color(0xffffffff),
      child: Image.asset(
        signcloseicon,
        width: iconSize,
        height: iconSize,
      ),
    ),
  );
}

// Form content
Widget buildFormContent(
    BuildContext context,
    double screenWidthRatio,
    TextEditingController emailController,
    TextStyle titleStyle,
    TextStyle normalStyle,
    TextStyle bttnTextStyle) {
  double screenWidth = MediaQuery.of(context).size.width;
  double titleFontSize = screenWidth < 600
      ? 24.0
      : 32.0; // Adjust title font size based on screen width
  double normalFontSize = screenWidth < 600
      ? 14.0
      : 18.0; // Adjust normal font size based on screen width

  TextStyle responsiveTitleStyle = titleStyle.copyWith(fontSize: titleFontSize);
  TextStyle responsiveNormalStyle =
      normalStyle.copyWith(fontSize: normalFontSize);

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Reset Password",
        style: responsiveTitleStyle,
      ),
      const SizedBox(height: 10),
      Text(
        "Type your email and we will send you a link to reset your password",
        style: responsiveNormalStyle,
      ),
      const SizedBox(height: 40),
      buildInputField("Email", emailController),
      const SizedBox(height: 24),
      buildResetButton(context, emailController),
    ],
  );
}

// Input field
Widget buildInputField(String label, TextEditingController controller,
    {bool isPassword = false}) {
  return TextField(
    controller: controller,
    obscureText: isPassword,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(color: Colors.grey),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue, width: 2),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 2),
      ),
    ),
  );
}

// SignIn button
Widget buildResetButton(
    BuildContext context, TextEditingController emailController) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: getTextFieldDataResetPassword(
          emailController, () => Navigator.pop(context), context),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff0076f9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: const Text('Send Reset'),
    ),
  );
}

// Helper function to display toast messages

// SignUp button
Widget buildSignUpButton(BuildContext context, TextStyle bttnTextStyle) {
  double screenWidth = MediaQuery.of(context).size.width;
  double fontSize =
      screenWidth < 600 ? 14.0 : 18.0; // Adjust font size based on screen width

  TextStyle responsiveBttnTextStyle =
      bttnTextStyle.copyWith(fontSize: fontSize);

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Don't have an account?",
        style: responsiveBttnTextStyle,
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignUpPage()),
          );
        },
        child: Text(
          "Sign Up",
          style:
              responsiveBttnTextStyle.copyWith(color: const Color(0xff0076f9)),
        ),
      ),
    ],
  );
}

Future<void> sendResetPasswordEmail(String email) async {
  await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
}

typedef OnSuccessCallback = void Function();

getTextFieldDataResetPassword(TextEditingController emailController,
    OnSuccessCallback onSuccess, BuildContext context) {
  return () async {
    String email = emailController.text;

    if (email.isEmpty) {
      MotionToast.error(
        title: const Text('Empty Fields'),
        description: const Text('Please enter your email'),
        animationType: AnimationType.fromBottom,
        position: MotionToastPosition.bottom,
      ).show(context);
      return;
    }

    try {
      await sendResetPasswordEmail(email);
      onSuccess();
      MotionToast.success(
        title: const Text('Reset Password Email Sent'),
        description: const Text('Please check your email'),
        animationType: AnimationType.fromBottom,
        position: MotionToastPosition.bottom,
      ).show(context);
    } on FirebaseAuthException {
      MotionToast.error(
        title: const Text('Invalid Email'),
        description: const Text('Please enter a valid email'),
        animationType: AnimationType.fromBottom,
        position: MotionToastPosition.bottom,
      ).show(context);
    }

    emailController.clear();
  };
}

TextStyle buildTextStyle(BuildContext context, String s, int i, FontWeight w700,
    double d, int j, Color color) {
  return TextStyle(
    fontFamily: s,
    fontSize: i * MediaQuery.of(context).textScaleFactor,
    fontWeight: w700,
    height: d,
    letterSpacing: j * MediaQuery.of(context).textScaleFactor,
    color: color,
  );
}
