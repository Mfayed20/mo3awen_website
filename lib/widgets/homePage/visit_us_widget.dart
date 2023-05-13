import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class VisitUs extends StatelessWidget {
  const VisitUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return visitUs(context);
  }
}

Widget visitUs(BuildContext context) {
  TextStyle titleStyle = buildTextStyle(
    context,
    "Poppins",
    40,
    FontWeight.w700,
    1.5,
    0,
    const Color(0xff000000),
  );
  TextStyle contactUsStyle = buildTextStyle(
    context,
    "Poppins",
    24,
    FontWeight.w600,
    1.5,
    0,
    const Color(0xff0076f9),
  );
  TextStyle bttnTextStyle = buildTextStyle(
    context,
    "Poppins",
    18,
    FontWeight.w400,
    1.5,
    0,
    const Color(0xff000000),
  );
  TextStyle normalStyle = buildTextStyle(
    context,
    "Poppins",
    16,
    FontWeight.w400,
    1.5,
    0,
    const Color(0xff000000),
  );

  // textediting controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  Widget nameInputField = buildInputField('Name', nameController);
  Widget emailInputField = buildInputField('Email', emailController);
  Widget subjectInputField = buildInputField('Subject', subjectController);
  Widget messageInputField =
      buildInputField('Message', messageController, isPassword: false);

  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  double gap = screenWidthRatio < 0.8
      ? 110
      : 70; // Adjust he gap based on the screen size

  return Container(
    margin: EdgeInsets.fromLTRB(0 * screenWidthRatio, 0 * screenWidthRatio,
        0 * screenWidthRatio, 54 * screenWidthRatio),
    width: 1441 * screenWidthRatio,
    height: 961 * screenWidthRatio,
    child: Stack(
      children: [
        /* I=images */
        buildImagepositioned(context, 0, 0, 1441, 890, visitUsBg),
        buildClickableImagePositioned(
            context,
            86,
            367,
            575,
            392,
            visitUslocationPhoto,
            'https://www.google.com/maps?q=Alfaisal+university,+Riyadh,+Saudi+Arabia'),
        /* Title */
        buildTextPositioned(context, 83, 45, 163, 60, 'VISIT US', titleStyle),
        buildColorPositioned(context, 83, 117, 100, 9, 4,
            const Color(0xff0076f9), Colors.transparent),
        /* info, Location, email text */
        buildTextPositioned(
            context, 26, 280, 282, 72, 'Alfaisal University', normalStyle),
        buildTextPositioned(
            context, 35, 300, 282, 72, 'Riyadh, Saudi Arabia', normalStyle),
        buildTextPositioned(context, 85, 320, 282, 72,
            'updownstudiosgames@gmail.com', normalStyle),
        /* Contact Us Rectangle*/
        buildColorPositioned(context, 739, 175, 614, 786, 3,
            const Color(0xffffffff), Colors.transparent),
        buildTextPositioned(
            context, 968, 225, 156, 36, 'CONTACT US', contactUsStyle),
        simpleTextFieldPositioned(context, 819, 309, 454, 60, nameInputField),
        simpleTextFieldPositioned(
            context, 819, 309 + gap, 454, 60, emailInputField),
        simpleTextFieldPositioned(
            context, 819, 309 + gap * 2, 454, 60, subjectInputField),
        simpleTextFieldPositioned(
            context, 819, 309 + gap * 3, 454, 119, messageInputField),
        buildElevatedBttnPositioned(
          context,
          1059,
          309 +
              gap *
                  4.5, // Calculate the top position based on the gap between text fields
          214,
          60,
          const Color(0xff0076f9),
          Colors.transparent,
          0,
          3,
          getTextFieldData(
            nameController,
            emailController,
            subjectController,
            messageController,
            context,
          ),
          'SUBMIT',
          bttnTextStyle,
        ),
      ],
    ),
  );
}

Widget buildInputField(String label, TextEditingController controller,
    {bool isPassword = false}) {
  // Define the obscureText variable outside the builder function
  ValueNotifier<bool> obscureTextNotifier = ValueNotifier<bool>(isPassword);

  return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
    return ValueListenableBuilder<bool>(
        valueListenable: obscureTextNotifier,
        builder: (BuildContext context, bool obscureText, Widget? child) {
          final double screenWidth = MediaQuery.of(context).size.width;
          final double fontSize = screenWidth <= 600
              ? 14.0
              : 16.0; // adjust the font size based on the screen size
          return TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(color: Colors.grey, fontSize: fontSize),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1),
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
        });
  });
}

Widget simpleTextFieldPositioned(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  Widget inputField,
) {
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * screenWidthRatio,
    top: top * screenWidthRatio,
    child: Align(
      child: SizedBox(
        width: width * screenWidthRatio,
        height: height * screenWidthRatio,
        child: inputField,
      ),
    ),
  );
}

TextField textField(
    BuildContext context,
    TextEditingController textController,
    int maxLines,
    String hintText,
    TextStyle style,
    Color bgColor,
    Color borderColor,
    double boderRadius) {
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return TextField(
    maxLines: maxLines,
    controller: textController,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: style,
      filled: true,
      fillColor: bgColor,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(boderRadius),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xffe2e2e2)),
        borderRadius: BorderRadius.circular(3),
      ),
      suffixIcon: SizedBox(
        width: 7 * screenWidthRatio,
        height: 7 * screenWidthRatio,
        child: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            textController.clear();
          },
          padding: const EdgeInsets.all(0),
          alignment: Alignment.center,
        ),
      ),
    ),
  );
}

// method to get the text from textfields
getTextFieldData(
    TextEditingController nameTf,
    TextEditingController emailTf,
    TextEditingController subjectTf,
    TextEditingController messageTf,
    BuildContext context) {
  final DatabaseReference databaseRef = FirebaseDatabase.instance.ref();
  return () {
    String name = nameTf.text;
    String email = emailTf.text;
    String subject = subjectTf.text;
    String message = messageTf.text;

    if (name.isEmpty | email.isEmpty | subject.isEmpty | message.isEmpty) {
      MotionToast.error(
        title: const Text('Empty Fields'),
        description: const Text('Please fill all the fields'),
        animationType: AnimationType.fromBottom,
        position: MotionToastPosition.bottom,
      ).show(context);

      return;
    } else {
      DatabaseReference newUserRef =
          databaseRef.child('contactUsRequests').push();

      final Map<String, dynamic> userData = {
        'name': name,
        'email': email,
        'subject': subject,
        'message': message,
      };
      newUserRef.set(userData);
      nameTf.clear();
      emailTf.clear();
      subjectTf.clear();
      messageTf.clear();

      Fluttertoast.showToast(
        msg: 'Thank you for contacting us',
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

Widget buildClickableImagePositioned(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  String imageUrl,
  String mapUrl,
) {
  double baseWidth = 1440;
  double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * screenWidthRatio,
    top: top * screenWidthRatio,
    child: GestureDetector(
      onTap: () async {
        Uri uri = Uri.parse(mapUrl);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        } else {
          Fluttertoast.showToast(
            msg: 'Could not open Google Maps',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      },
      child: Align(
        child: SizedBox(
          width: width * screenWidthRatio,
          height: height * screenWidthRatio,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
