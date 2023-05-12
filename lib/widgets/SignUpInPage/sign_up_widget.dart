import 'dart:math';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:mo3awen_website/pages/mainpages/home_page.dart';
import 'package:mo3awen_website/widgets/SignUpInPage/reset_password_widget.dart';
import '../../pages/signIn/sign_in_page.dart';
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
                        buildSignUpForm(
                            context,
                            screenWidthRatio,
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

Widget buildSignUpForm(
    BuildContext context,
    double screenWidthRatio,
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
                _BuilSignUpForm(),
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

class _BuilSignUpForm extends StatefulWidget {
  @override
  _BuilSignUpFormState createState() => _BuilSignUpFormState();
}

class _BuilSignUpFormState extends State<_BuilSignUpForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController hospitalNameController = TextEditingController();
  TextEditingController hospitalAddressController = TextEditingController();

  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return _buildAddUserForm();
  }

  Widget _buildAddUserForm() {
    TextStyle titleStyle = buildTextStyle(context, 'poppins', 44,
        FontWeight.w700, 1.5, 0, const Color(0xff0076f9));
    TextStyle normalStyle = buildTextStyle(context, 'poppins', 20,
        FontWeight.w400, 1.5, 0, const Color(0xff000000));
    TextStyle bttnTextStyle = buildTextStyle(context, "Poppins", 18,
        FontWeight.w400, 1.5, 0, const Color(0xff000000));

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

    TextStyle responsiveTitleStyle =
        titleStyle.copyWith(fontSize: titleFontSize);
    TextStyle responsiveNormalStyle =
        normalStyle.copyWith(fontSize: normalFontSize);
    TextStyle responsiveBttnTextStyle =
        bttnTextStyle.copyWith(fontSize: bttnFontSize);

    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            buildInputField("Last Name", lastNameController),
            const SizedBox(height: 10),
            buildDatePicker(context, dobController),
            const SizedBox(height: 10),
            genderDropdownButtonFormField(
              value: _selectedGender,
              onChanged: (newValue) {
                setState(() {
                  _selectedGender = newValue;
                });
              },
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                _showCustomCountryPicker(context, nationalityController);
              },
              child: AbsorbPointer(
                child: TextField(
                  controller: nationalityController,
                  decoration: const InputDecoration(
                    labelText: 'Nationality',
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            buildInputField("Hospital Name", hospitalNameController),
            const SizedBox(height: 10),
            buildInputField("Hospital Address", hospitalAddressController),
            const SizedBox(height: 10),
            buildInputField("Email", emailController),
            const SizedBox(height: 10),
            buildInputField("Password", passwordController, isPassword: true),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xff0076f9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () async {
                  if (firstNameController.text.isEmpty ||
                      lastNameController.text.isEmpty ||
                      dobController.text.isEmpty ||
                      _selectedGender == null ||
                      nationalityController.text.isEmpty ||
                      emailController.text.isEmpty ||
                      passwordController.text.isEmpty ||
                      _selectedGender == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please fill all fields.'),
                      ),
                    );
                    return;
                  } else {
                    try {
                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text);

                      if (userCredential.user != null) {
                        // Save the profile photo URL in Firebase Authentication
                        String profilePhotoURL =
                            'https://firebasestorage.googleapis.com/v0/b/mo3awen-d2404.appspot.com/o/default_profile_pics%2Fprofile_pic.png?alt=media&token=3b04c8ac-4c2f-48f0-b93e-f6ba20a483c7';
                        await userCredential.user!
                            .updatePhotoURL(profilePhotoURL);

                        // Save the data to Firebase Realtime Database
                        String uid = userCredential
                            .user!.uid; // Use the null assertion operator here
                        DatabaseReference newUserRef = FirebaseDatabase.instance
                            .ref()
                            .child("users")
                            .child(uid);

                        await newUserRef.set({
                          'DoB': dobController.text,
                          'email': emailController.text,
                          'f-name': firstNameController.text,
                          'gender': _selectedGender,
                          'hosAddress': hospitalAddressController.text,
                          'hosName': hospitalNameController.text,
                          'l-name': lastNameController.text,
                          'nationality': nationalityController.text,
                          'usertype': "user",
                        });

                        FirebaseAuth.instance.currentUser!
                            .sendEmailVerification();
                        FirebaseAuth.instance.signOut();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('A verification email has been sent'),
                          ),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      }
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('the password provided is too weak'),
                          ),
                        );
                      } else if (e.code == 'email-already-in-use') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'The account already exists for that email'),
                          ),
                        );
                      }
                      dobController.clear();
                      emailController.clear();
                      firstNameController.clear();
                      lastNameController.clear();
                      nationalityController.clear();
                      passwordController.clear();
                      hospitalAddressController.clear();
                      hospitalNameController.clear();
                      // clear the gender dropdown
                      setState(() {
                        _selectedGender = null;
                      });
                    } catch (e) {
                      if (kDebugMode) {
                        print(e);
                      }
                    }
                  }
                },
                child: const Text('Sign Up'),
              ),
            ),
            const SizedBox(height: 20),
            buildSignIntextButton(context, responsiveBttnTextStyle),
          ],
        ),
      ),
    );
  }

  void _showCustomCountryPicker(
      BuildContext context, TextEditingController nationalityController) {
    showDialog(
      context: context,
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height / 8,
        width: MediaQuery.of(context).size.width,
        child: DraggableScrollableSheet(
          initialChildSize: 0.4,
          minChildSize: 0.4,
          maxChildSize: 0.4,
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: CountryPickerDialog(
                titlePadding: const EdgeInsets.all(8.0),
                searchCursorColor: Colors.pinkAccent,
                searchInputDecoration:
                    const InputDecoration(hintText: 'Search...'),
                isSearchable: true,
                title: const Text('Select your country'),
                onValuePicked: (Country country) {
                  nationalityController.text = country.name;
                },
                itemBuilder: _buildDialogItem,
                itemFilter: (Country country) =>
                    country.name !=
                    "Israel", // Added this line to filter out Israel
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          const SizedBox(width: 8.0),
          Text(country.name),
        ],
      );

  Widget buildSignIntextButton(BuildContext context, TextStyle bttnTextStyle) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth < 600
        ? 14.0
        : 18.0; // Adjust font size based on screen width

    TextStyle responsiveBttnTextStyle =
        bttnTextStyle.copyWith(fontSize: fontSize);

    return Wrap(
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.center,
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
            style: responsiveBttnTextStyle.copyWith(
                color: const Color(0xff0076f9)),
          ),
        ),
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

  Widget genderDropdownButtonFormField({
    required String? value,
    required Function(String?) onChanged,
  }) {
    return DropdownButtonFormField<String>(
      value: value,
      decoration: InputDecoration(
        labelText: 'Gender',
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade500, width: 2.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      items: const [
        DropdownMenuItem(value: 'male', child: Text('Male')),
        DropdownMenuItem(value: 'female', child: Text('Female')),
      ],
      onChanged: onChanged,
    );
  }

  Widget buildDatePicker(
      BuildContext context, TextEditingController dobController) {
    return GestureDetector(
      onTap: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (pickedDate != null) {
          dobController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
        }
      },
      child: AbsorbPointer(
        child: TextField(
          controller: dobController,
          decoration: const InputDecoration(
            labelText: 'Date of Birth',
            labelStyle: TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}
