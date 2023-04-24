import 'dart:math';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../pages/sign_in_page.dart';
import '../../utils/constants.dart';

// Main SignIn widget
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  // Move all TextEditingController instances to the state class
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController hospitalNameController = TextEditingController();
  TextEditingController hospitalAddressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1440;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double fem = screenWidth / baseWidth;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
      ),
      child: Row(
        children: [
          buildBackgroundAndLogo(context, fem),
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
                        buildSignUpForm(
                            context,
                            fem,
                            emailController,
                            passwordController,
                            firstNameController,
                            lastNameController,
                            dateOfBirthController,
                            nationalityController,
                            genderController,
                            hospitalNameController,
                            hospitalAddressController),
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
    // Dispose of the TextEditingController instances when the widget is removed from the tree
    emailController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    dateOfBirthController.dispose();
    nationalityController.dispose();
    genderController.dispose();
    hospitalNameController.dispose();
    hospitalAddressController.dispose();
    super.dispose();
  }
}

// Background and logo container
Widget buildBackgroundAndLogo(BuildContext context, double fem) {
  double screenHeight = MediaQuery.of(context).size.height;
  return Container(
    padding: EdgeInsets.fromLTRB(85 * fem, 42 * fem, 85 * fem, 42 * fem),
    width: 618 * fem,
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
        width: 126 * fem,
        height: 81 * fem,
        child: Image.asset(
          signlogoimg,
        ),
      ),
    ),
  );
}

Widget buildSignUpForm(
    BuildContext context,
    double fem,
    TextEditingController emailController,
    TextEditingController passwordController,
    TextEditingController firstNameController,
    TextEditingController lastNameController,
    TextEditingController dateOfBirthController,
    TextEditingController nationalityController,
    TextEditingController genderController,
    TextEditingController hospitalNameController,
    TextEditingController hospitalAddressController) {
  double screenHeight = MediaQuery.of(context).size.height;

  TextStyle titleStyle = buildTextStyle(
      context, 'poppins', 44, FontWeight.w700, 1.5, 0, const Color(0xff0076f9));
  TextStyle normalStyle = buildTextStyle(
      context, 'poppins', 20, FontWeight.w400, 1.5, 0, const Color(0xff000000));
  TextStyle bttnTextStyle = buildTextStyle(
      context, "Poppins", 18, FontWeight.w400, 1.5, 0, const Color(0xff000000));

  return Expanded(
    child: Container(
      padding: EdgeInsets.fromLTRB(45 * fem, 41 * fem, 45 * fem, 41 * fem),
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
                buildCloseButton(context, fem),
                buildFormContent(
                    context,
                    fem,
                    emailController,
                    passwordController,
                    firstNameController,
                    lastNameController,
                    dateOfBirthController,
                    nationalityController,
                    genderController,
                    hospitalNameController,
                    hospitalAddressController,
                    titleStyle,
                    normalStyle,
                    bttnTextStyle),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

// Close button
Widget buildCloseButton(BuildContext context, double fem) {
  const double maxIconSize = 30.0;
  double iconSize = min(30 * fem, maxIconSize);

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
    double fem,
    TextEditingController emailController,
    TextEditingController passwordController,
    TextEditingController firstNameController,
    TextEditingController lasttNameController,
    TextEditingController dataOfBirthController,
    TextEditingController nationalityController,
    TextEditingController genderController,
    TextEditingController hospitalNameController,
    TextEditingController hospitalAddressController,
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

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Create an account",
        style: responsiveTitleStyle,
      ),
      const SizedBox(height: 10),
      Text(
        "Use your email to create an account",
        style: responsiveNormalStyle,
      ),
      const SizedBox(height: 40),
      buildInputField("First Name", firstNameController),
      const SizedBox(height: 10),
      buildInputField("Last Name", lasttNameController),
      const SizedBox(height: 10),
      buildInputField("Date of Birth", dataOfBirthController),
      const SizedBox(height: 10),
      buildInputField("Nationality", nationalityController),
      const SizedBox(height: 10),
      buildInputField("Gender", genderController),
      const SizedBox(height: 10),
      buildInputField("Hospital Name", hospitalNameController),
      const SizedBox(height: 10),
      buildInputField("Hospital Address", hospitalAddressController),
      const SizedBox(height: 10),
      buildInputField("Email", emailController),
      const SizedBox(height: 10),
      buildInputField("Password", passwordController, isPassword: true),
      const SizedBox(height: 10),
      buildSignUpButton(
        context,
        emailController,
        passwordController,
        firstNameController,
        lasttNameController,
        dataOfBirthController,
        nationalityController,
        genderController,
        hospitalNameController,
        hospitalAddressController,
      ),
      const SizedBox(height: 20),
      buildSignInButton(context, responsiveBttnTextStyle),
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

// SignUp button
Widget buildSignUpButton(
    BuildContext context,
    TextEditingController emailController,
    TextEditingController passwordController,
    TextEditingController firstNameController,
    TextEditingController lasttNameController,
    TextEditingController dataOfBirthController,
    TextEditingController nationalityController,
    TextEditingController genderController,
    TextEditingController hospitalNameController,
    TextEditingController hospitalAddressController) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: getTextFieldDataSignUp(
          emailController,
          passwordController,
          firstNameController,
          lasttNameController,
          dataOfBirthController,
          nationalityController,
          genderController,
          hospitalNameController,
          hospitalAddressController),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff0076f9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: const Text('Sign Up'),
    ),
  );
}

bool areFieldsEmpty(List<TextEditingController> controllers) {
  return controllers.any((controller) => controller.text.isEmpty);
}

void showErrorToast(String message) {
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

getTextFieldDataSignUp(
    TextEditingController emailController,
    TextEditingController passwordController,
    TextEditingController firstNameController,
    TextEditingController lastNameController,
    TextEditingController dateOfBirthController,
    TextEditingController nationalityController,
    TextEditingController genderController,
    TextEditingController hospitalNameController,
    TextEditingController hospitalAddressController) {
  return () async {
    List<TextEditingController> controllers = [
      emailController,
      passwordController,
      firstNameController,
      lastNameController,
      dateOfBirthController,
      nationalityController,
      genderController,
      hospitalNameController,
      hospitalAddressController,
    ];

    if (areFieldsEmpty(controllers)) {
      showErrorToast('Please fill all the fields');
      return;
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);

        if (userCredential.user != null) {
          // Save the data to Firebase Realtime Database
          String uid =
              userCredential.user!.uid; // Use the null assertion operator here
          DatabaseReference dbRef =
              FirebaseDatabase.instance.ref().child('admin').child(uid);

          await dbRef.set({
            'DoB': dateOfBirthController.text,
            'email': emailController.text,
            'f-name': firstNameController.text,
            'gender': genderController.text,
            'hosAddress': hospitalAddressController.text,
            'hosName': hospitalNameController.text,
            'l-name': lastNameController.text,
            'nationality': nationalityController.text,
          });
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          showErrorToast('the password provided is too weak');
        } else if (e.code == 'email-already-in-use') {
          showErrorToast('The account already exists for that email');
        }
      } catch (e) {
        if (kDebugMode) {
          print(e);
        }
      }
      for (var controller in controllers) {
        controller.clear();
      }
    }
  };
}

// SignIn button
// Widget buildSignInButton(BuildContext context, TextStyle bttnTextStyle) {
//   double screenWidth = MediaQuery.of(context).size.width;
//   double fontSize =
//       screenWidth < 600 ? 14.0 : 18.0; // Adjust font size based on screen width

//   TextStyle responsiveBttnTextStyle =
//       bttnTextStyle.copyWith(fontSize: fontSize);

//   return SingleChildScrollView(
//     scrollDirection: Axis.horizontal,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           "Already have an account?",
//           style: responsiveBttnTextStyle,
//         ),
//         TextButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const SignInPage()),
//             );
//           },
//           child: Text(
//             "Sign In",
//             style: responsiveBttnTextStyle.copyWith(
//                 color: const Color(0xff0076f9)),
//           ),
//         ),
//       ],
//     ),
//   );
// }

Widget buildSignInButton(BuildContext context, TextStyle bttnTextStyle) {
  double screenWidth = MediaQuery.of(context).size.width;
  double fontSize =
      screenWidth < 600 ? 14.0 : 18.0; // Adjust font size based on screen width

  TextStyle responsiveBttnTextStyle =
      bttnTextStyle.copyWith(fontSize: fontSize);

  return Wrap(
    alignment: WrapAlignment.start,
    children: [
      Text(
        "Already have an account?",
        style: responsiveBttnTextStyle,
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignInPage()),
          );
        },
        child: Text(
          "Sign In",
          style:
              responsiveBttnTextStyle.copyWith(color: const Color(0xff0076f9)),
        ),
      ),
    ],
  );
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
