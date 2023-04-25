import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mo3awen_website/pages/sign_up_page.dart';
import '../../pages/reset_password_page.dart';
import '../../utils/constants.dart';

// Main SignIn widget
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<Profile> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
        children: [],
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
    BuildContext context,
    double screenWidthRatio,
    TextEditingController emailController,
    TextEditingController passwordController) {
  double screenHeight = MediaQuery.of(context).size.height;
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
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
                    passwordController, titleStyle, normalStyle, bttnTextStyle),
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
    TextEditingController passwordController,
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
  double bttnFontSize = screenWidth < 600
      ? 14.0
      : 18.0; // Adjust button font size based on screen width

  TextStyle responsiveTitleStyle = titleStyle.copyWith(fontSize: titleFontSize);
  TextStyle responsiveNormalStyle =
      normalStyle.copyWith(fontSize: normalFontSize);
  TextStyle responsiveBttnTextStyle =
      bttnTextStyle.copyWith(fontSize: bttnFontSize);
  TextStyle responsiveForgetBttnTextStyle = bttnTextStyle.copyWith(
      fontSize: bttnFontSize, color: const Color(0xff0076f9));

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Welcome Back",
        style: responsiveTitleStyle,
      ),
      const SizedBox(height: 10),
      Text(
        "Continue to manage your account",
        style: responsiveNormalStyle,
      ),
      const SizedBox(height: 40),
      buildInputField("Email", emailController),
      const SizedBox(height: 24),
      buildInputField("Password", passwordController, isPassword: true),
      const SizedBox(height: 10),
      buildForgotPasswordButton(context, responsiveForgetBttnTextStyle),
      const SizedBox(height: 30),
      buildSignInButton(context, emailController, passwordController),
      const SizedBox(height: 48),
      buildSignUpButton(context, responsiveBttnTextStyle),
    ],
  );
}

// Input field
Widget buildInputField(String label, TextEditingController controller,
    {bool isPassword = false}) {
  // Define the obscureText variable outside the builder function
  ValueNotifier<bool> obscureTextNotifier = ValueNotifier<bool>(isPassword);

  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
      return ValueListenableBuilder<bool>(
        valueListenable: obscureTextNotifier,
        builder: (BuildContext context, bool obscureText, Widget? child) {
          return TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(color: Colors.grey),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2),
              ),
              suffixIcon: isPassword
                  ? IconButton(
                      icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        // Toggle password visibility
                        obscureTextNotifier.value = !obscureText;
                      },
                    )
                  : null,
            ),
          );
        },
      );
    },
  );
}

// Forgot Password button
Widget buildForgotPasswordButton(
    BuildContext context, TextStyle bttnTextStyle) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ResetPasswordPage()),
      );
    },
    child: Text(
      'Forgot Password?',
      style: bttnTextStyle,
    ),
  );
}

// SignIn button
Widget buildSignInButton(
    BuildContext context,
    TextEditingController emailController,
    TextEditingController passwordController) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: getTextFieldDataSignIn(emailController, passwordController),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff0076f9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: const Text('Sign In'),
    ),
  );
}

// Helper function to display toast messages
void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.blue,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

// New function to handle sign-in with validation and error handling
void Function()? getTextFieldDataSignIn(TextEditingController emailController,
    TextEditingController passwordController) {
  return () async {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      showToast('Please fill all the fields');
      return;
    } else {
      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
      } on FirebaseAuthException catch (e) {
        handleAuthError(e);
      }

      emailController.clear();
      passwordController.clear();
    }
  };
}

// Function to handle FirebaseAuthException errors
void handleAuthError(FirebaseAuthException e) {
  if (e.code == 'user-not-found') {
    showToast('No user found for that email');
  } else if (e.code == 'wrong-password') {
    showToast('Wrong password');
  } else {
    showToast('An unknown error occurred');
  }
}

// SignUp button
Widget buildSignUpButton(BuildContext context, TextStyle bttnTextStyle) {
  double screenWidth = MediaQuery.of(context).size.width;
  double fontSize =
      screenWidth < 600 ? 14.0 : 18.0; // Adjust font size based on screen width

  TextStyle responsiveBttnTextStyle =
      bttnTextStyle.copyWith(fontSize: fontSize);

  return Wrap(
    alignment: WrapAlignment.start,
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

// Sign In with Email and Password
Future<void> signInWithEmailAndPassword(
    BuildContext context, String email, String password) async {
  try {
    Navigator.pop(context);
  } on FirebaseAuthException catch (error) {
    Fluttertoast.showToast(
      msg: error.message ?? "Unknown Error",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  } catch (error) {
    if (kDebugMode) {
      print("Error: $error");
    }
  }
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
