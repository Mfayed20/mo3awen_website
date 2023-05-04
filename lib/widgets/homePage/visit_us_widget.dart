import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
  TextStyle inputHeaderStyle = buildTextStyle(
    context,
    "Poppins",
    16,
    FontWeight.w400,
    1.5,
    0,
    const Color(0xff000000),
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
  TextStyle textFieldlStyle = buildTextStyle(
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

  TextField nameTf = textField(
    context,
    nameController,
    1,
    'Enter your name',
    textFieldlStyle,
    const Color(0xffe2e2e2),
    Colors.transparent,
    3,
  );
  TextField emailTf = textField(
    context,
    emailController,
    1,
    'Enter your email',
    textFieldlStyle,
    const Color(0xffe2e2e2),
    Colors.transparent,
    3,
  );
  TextField subjectTf = textField(
    context,
    subjectController,
    1,
    'Enter your subject',
    textFieldlStyle,
    const Color(0xffe2e2e2),
    Colors.transparent,
    3,
  );
  TextField messageTf = textField(
    context,
    messageController,
    5,
    'Enter your message',
    textFieldlStyle,
    const Color(0xffe2e2e2),
    Colors.transparent,
    3,
  );

  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 54 * fem),
    width: 1441 * fem,
    height: 961 * fem,
    child: Stack(
      children: [
        /* I=images */
        buildImagepositioned(context, 0, 0, 1441, 890, visitUsBg),
        // buildImagepositioned(context, 86, 367, 575, 392, visitUslocationPhoto),
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
            context, 26, 280, 282, 72, 'Alfaisal university', normalStyle),
        buildTextPositioned(
            context, 35, 300, 282, 72, 'Riyadh, Saudi Arabia', normalStyle),
        buildTextPositioned(context, 85, 320, 282, 72,
            'updownstudiosgames@gmail.com', normalStyle),
        /* Contact Us Rectangle*/
        buildColorPositioned(context, 739, 175, 614, 786, 3,
            const Color(0xffffffff), Colors.transparent),
        buildTextPositioned(
            context, 968, 225, 156, 36, 'CONTACT US', contactUsStyle),
        buildTextPositioned(
            context, 819, 309, 52, 24, 'Name:', inputHeaderStyle),
        buildTextPositioned(
            context, 819, 419, 47, 24, 'Email:', inputHeaderStyle),
        buildTextPositioned(
            context, 819, 529, 64, 24, 'Subject:', inputHeaderStyle),
        buildTextPositioned(
            context, 819, 639, 76, 24, 'Message:', inputHeaderStyle),
        simpleTextFieldPositioned(context, 819, 337, 454, 60, nameTf),
        simpleTextFieldPositioned(context, 819, 447, 454, 60, emailTf),
        simpleTextFieldPositioned(context, 819, 557, 454, 60, subjectTf),
        simpleTextFieldPositioned(context, 819, 667, 454, 119, messageTf),
        buildElevatedBttnPositioned(
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
            nameController,
            emailController,
            subjectController,
            messageController,
          ),
          'SUBMIT',
          bttnTextStyle,
        ),
      ],
    ),
  );
}

Widget simpleTextFieldPositioned(
  BuildContext context,
  double left,
  double top,
  double width,
  double height,
  TextField textField,
) {
  double baseWidth = 1440;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  return Positioned(
    left: left * fem,
    top: top * fem,
    child: Align(
      child: SizedBox(
        width: width * fem,
        height: height * fem,
        child: textField,
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
  double fem = MediaQuery.of(context).size.width / baseWidth;
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
        width: 7 * fem,
        height: 7 * fem,
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
getTextFieldData(TextEditingController nameTf, TextEditingController emailTf,
    TextEditingController subjectTf, TextEditingController messageTf) {
  final DatabaseReference _databaseRef = FirebaseDatabase.instance.ref();
  return () {
    String name = nameTf.text;
    String email = emailTf.text;
    String subject = subjectTf.text;
    String message = messageTf.text;

    if (name.isEmpty | email.isEmpty | subject.isEmpty | message.isEmpty) {
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
      DatabaseReference newUserRef = _databaseRef.child('contact').push();

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
        if (await canLaunch(mapUrl)) {
          await launch(mapUrl);
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
