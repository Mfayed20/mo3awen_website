import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = textStyle(
      context,
      'poppins',
      44,
      FontWeight.w700,
      1.5,
      0,
      const Color(0xff0076f9),
    );
    TextStyle normalStyle = textStyle(
      context,
      'poppins',
      20,
      FontWeight.w400,
      1.5,
      0,
      const Color(0xff000000),
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
    TextEditingController genderController = TextEditingController();
    TextEditingController hospitalNameController = TextEditingController();
    TextEditingController hospitalAddressController = TextEditingController();

    double baseWidth = 1440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
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
                image: const AssetImage(
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
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Container(
              width: double.infinity,
              height: 795 * fem,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      backgroundColor: const Color(0xffffffff),
                      child: Image.asset(
                        signcloseicon,
                        width: 30 * fem,
                        height: 30 * fem,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 116 * fem, 0 * fem),
                    width: 500 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
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
                                  signUpInTextFiled(context,
                                      firstNameController, 'First Name'),
                                  signUpInTextFiled(context,
                                      lasttNameController, 'Last Name'),
                                  signUpInTextFiled(context,
                                      dataOfBirthController, 'Data of Birth'),
                                  signUpInTextFiled(context,
                                      nationalityController, 'Nationality'),
                                  signUpInTextFiled(
                                      context, genderController, 'Gender'),
                                  signUpInTextFiled(context,
                                      hospitalNameController, 'Hosbital name'),
                                  signUpInTextFiled(
                                      context,
                                      hospitalAddressController,
                                      'Hosbital address'),
                                  signUpInTextFiled(
                                      context, emailController, 'Email'),
                                  signUpInTextFiled(
                                      context, passwordController, 'Password'),
                                  Container(
                                    height: 20 * fem,
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
                                    getTextFieldDataSignUp(
                                      firstNameController,
                                      lasttNameController,
                                      dataOfBirthController,
                                      nationalityController,
                                      emailController,
                                      passwordController,
                                      genderController,
                                      hospitalNameController,
                                      hospitalAddressController,
                                    ),
                                    'SIGN UP',
                                    bttnTextStyle,
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 13 * fem),
    decoration: BoxDecoration(
      color: const Color(0xffe2e2e2),
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
          borderSide: const BorderSide(color: Color(0xffe2e2e2)),
          borderRadius: BorderRadius.circular(3),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffe2e2e2)),
          borderRadius: BorderRadius.circular(3),
        ),
        hintStyle: hintTextStyle,
        contentPadding: const EdgeInsets.only(
          left: 20,
        ),
      ),
    ),
  );
}

getTextFieldDataSignUp(
    TextEditingController firstNameController,
    TextEditingController lastNameController,
    TextEditingController dateOfBirthController,
    TextEditingController nationalityController,
    TextEditingController emailController,
    TextEditingController passwordController,
    TextEditingController genderController,
    TextEditingController hospitalNameController,
    TextEditingController hospitalAddressController) {
  return () async {
    String firstName = firstNameController.text;
    String lastName = lastNameController.text;
    String dateOfBirth = dateOfBirthController.text;
    String nationality = nationalityController.text;
    String email = emailController.text;
    String password = passwordController.text;
    String gender = genderController.text;
    String hospitalName = hospitalNameController.text;
    String hospitalAddress = hospitalAddressController.text;

    if (firstName.isEmpty ||
        lastName.isEmpty ||
        dateOfBirth.isEmpty ||
        nationality.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        gender.isEmpty ||
        hospitalName.isEmpty ||
        hospitalAddress.isEmpty) {
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
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        if (userCredential.user != null) {
          // Save the data to Firebase Realtime Database
          String uid =
              userCredential.user!.uid; // Use the null assertion operator here
          DatabaseReference dbRef =
              FirebaseDatabase.instance.ref().child('admin').child(uid);

          await dbRef.set({
            'DoB': dateOfBirth,
            'email': email,
            'f-name': firstName,
            'gender': gender, // Add your gender field here if needed
            'hosAddress':
                hospitalAddress, // Add your hospital address field here if needed
            'hosName':
                hospitalName, // Add your hospital name field here if needed
            'l-name': lastName,
            'nationality': nationality,
          });
        } else {
          // Handle the case when userCredential.user is null
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          Fluttertoast.showToast(
            msg: 'the password provided is too weak',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        } else if (e.code == 'email-already-in-use') {
          Fluttertoast.showToast(
            msg: 'The account already exists for that email',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      } catch (e) {
        print(e);
      }
      firstNameController.clear();
      lastNameController.clear();
      dateOfBirthController.clear();
      nationalityController.clear();
      emailController.clear();
      passwordController.clear();
    }
  };
}
