import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../pages/displaylist/display_all_exercises_page_normal_user.dart';
import 'package:image_network/image_network.dart';
import 'package:firebase_storage/firebase_storage.dart'; // Add this import
import 'dart:html' as html;
import 'package:path/path.dart' as path;

class PatientProfileWidget extends StatefulWidget {
  const PatientProfileWidget({super.key});

  @override
  PatientProfileWidgetState createState() => PatientProfileWidgetState();
}

class PatientProfileWidgetState extends State<PatientProfileWidget> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final DatabaseReference _databaseRef = FirebaseDatabase.instance.ref();
  late User _user;
  late DatabaseReference _userRef;
  String fName = '';
  String lName = '';
  String usertype = '';
  String session = '';
  String exercises = '';
  String goals = '';
  String feedback = '';
  String progress = '';

  // Add this method for image uploading
  Future<void> _pickImage() async {
    html.FileUploadInputElement uploadInput = html.FileUploadInputElement()
      ..accept = 'image/*';
    uploadInput.click();

    uploadInput.onChange.listen((event) {
      final file = uploadInput.files!.first;
      final reader = html.FileReader();

      reader.readAsDataUrl(file);
      reader.onLoadEnd.listen((event) async {
        String fileName = path.basename(file.name);
        Reference storageRef = FirebaseStorage.instance
            .ref('profile_images')
            .child(_user.uid)
            .child(fileName);

        await storageRef.putString(reader.result as String,
            format: PutStringFormat.dataUrl);
        String photoUrl = await storageRef.getDownloadURL();

        _user.updatePhotoURL(photoUrl);
        setState(() {});
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _user = _auth.currentUser!;
    _userRef = _databaseRef.child('users').child(_user.uid);
    _getUserData();
  }

  Future<void> _getUserData() async {
    DataSnapshot snapshot = (await _userRef.once()).snapshot;
    Map<String, dynamic>? userData = snapshot.value as Map<String, dynamic>?;

    if (userData == null) {
      // handle null value here
    } else {
      setState(() {
        fName = userData['f-name']?.toString() ?? '';
        lName = userData['l-name']?.toString() ?? '';
        usertype = userData['usertype']?.toString() ?? '';
        if (userData['therapy'] != null) {
          session = userData['therapy']['session']?.toString() ?? '';
          exercises = userData['therapy']['exercises']?.toString() ?? '';
          goals = userData['therapy']['goals']?.toString() ?? '';
          feedback = userData['therapy']['feedback']?.toString() ?? '';
        } else {
          session = '';
          exercises = '';
          goals = '';
          feedback = '';
        }
        if (userData['progress'] != null) {
          progress = userData['progress']?.toString() ?? '';
        } else {
          progress = '';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildProfileHeader(),
        _buildProgressBody(),
      ],
    );
  }

  Widget _buildProfileHeader() {
    double baseWidth = 1440;
    double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;
    double avatarSize = 80.0 * screenWidthRatio;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0 * screenWidthRatio),
          child: Row(
            children: [
              Column(
                children: [
                  ImageNetwork(
                    image: _user.photoURL!,
                    height: avatarSize,
                    width: avatarSize,
                    duration: 1500,
                    curve: Curves.easeIn,
                    onPointer: true,
                    debugPrint: false,
                    fullScreen: false,
                    fitAndroidIos: BoxFit.cover,
                    fitWeb: BoxFitWeb.cover,
                    borderRadius: BorderRadius.circular(70),
                    onLoading: const CircularProgressIndicator(
                      color: Colors.indigoAccent,
                    ),
                    onError: const Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                    onTap: () {
                      debugPrint("©gabriel_patrick_souza");
                    },
                  ),
                ],
              ),
              SizedBox(width: 16.0 * screenWidthRatio),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${fName.isNotEmpty ? fName.substring(0, 1).toUpperCase() + fName.substring(1) : ''} ${lName.isNotEmpty ? lName.substring(0, 1).toUpperCase() + lName.substring(1) : ''}',
                    style: TextStyle(
                      fontSize: 24.0 * screenWidthRatio,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0 * screenWidthRatio),
                  Text(
                    'User Type: ${usertype.isNotEmpty ? usertype[0].toUpperCase() + usertype.substring(1) : ''}',
                    style: TextStyle(
                      fontSize: 16.0 * screenWidthRatio,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    color: Colors.blue,
                    onPressed: () {
                      _pickImage();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0 * screenWidthRatio),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DisplayAllExercisesNormalUserPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.all(16 * screenWidthRatio),
                ),
                child: Text(
                  'Show all Exercises',
                  style: TextStyle(fontSize: 16 * screenWidthRatio),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProgressBody() {
    double baseWidth = 1440;
    double screenWidthRatio = MediaQuery.of(context).size.width / baseWidth;

    List<TextSpan> _styledText(String progress, double screenWidthRatio) {
      // Transform the string as in your original code
      progress = progress
          .replaceAll('{', '')
          .replaceAll('}', '')
          .replaceAll(',', '\n')
          .replaceAll('D', '\n D')
          .replaceAll(': r', '\n R')
          .replaceAll('-', '/')
          .replaceAll('Ship Voyage:', '\nSHIP VOYAGE:')
          .replaceAll('BunkerRun:', '\nBUNKER RUN:')
          .replaceAll('Clock', 'Time')
          .replaceAll('score', 'Score')
          .replaceAll('set', 'Set');

      // Split into lines
      List<String> lines = progress.split('\n');

      // Map each line to a TextSpan, with special styling for specific lines
      List<TextSpan> spans = lines.map((line) {
        if (line.contains('SHIP VOYAGE') || line.contains('BUNKER RUN')) {
          return TextSpan(
              text: '$line\n',
              style: TextStyle(
                  fontSize: 40.0 * screenWidthRatio, color: Colors.red));
        } else {
          return TextSpan(
              text: '$line\n',
              style: TextStyle(fontSize: 30.0 * screenWidthRatio));
        }
      }).toList();

      return spans;
    }

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Center(
        child: SizedBox(
          child: Column(
            children: [
              Text(
                'Session: $session\nExercises: $exercises\nGoals: $goals\nFeedback: $feedback',
                style: TextStyle(fontSize: 40.0 * screenWidthRatio),
              ),
              SizedBox(height: 20.0 * screenWidthRatio),
              Text(
                'Your Progress:',
                style: TextStyle(
                    fontSize: 40.0 * screenWidthRatio, color: Colors.blue),
              ),
              SizedBox(height: 10.0 * screenWidthRatio),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: _styledText(progress, screenWidthRatio),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInputField(String label, TextEditingController controller,
      {bool isPassword = false, int maxLines = 1}) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      maxLines: maxLines,
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
}
