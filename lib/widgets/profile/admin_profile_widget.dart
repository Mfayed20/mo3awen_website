import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_network/image_network.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import '../../../pages/displaylist/display_all_exercises_page_admin.dart';
import '../../../pages/displaylist/display_all_users_page.dart';
import '../../pages/displaylist/display_all_contact_us_page.dart';
import '../../pages/displaylist/display_all_requested_exercises_page.dart';
import 'dart:html' as html;
import 'package:path/path.dart' as path;

class AdminProfileWidget extends StatefulWidget {
  const AdminProfileWidget({super.key});

  @override
  AdminProfileWidgetState createState() => AdminProfileWidgetState();
}

class AdminProfileWidgetState extends State<AdminProfileWidget> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final DatabaseReference _databaseRef = FirebaseDatabase.instance.ref();
  late User _user;
  late DatabaseReference _userRef;
  String fName = '';
  String lName = '';
  String usertype = '';

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
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildProfileHeader(),
        _buildAddExerciseForm(),
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
                          builder: (context) => const DisplayUsersPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.all(16 * screenWidthRatio),
                ),
                child: Text(
                  'Show all Users',
                  style: TextStyle(fontSize: 16 * screenWidthRatio),
                ),
              ),
              SizedBox(width: 10.0 * screenWidthRatio),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DisplayAllExercisesPage()));
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
              SizedBox(width: 10.0 * screenWidthRatio),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DisplayAllRequestedExercisesPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.all(16 * screenWidthRatio),
                ),
                child: Text(
                  'Show all Exercises requested',
                  style: TextStyle(fontSize: 16 * screenWidthRatio),
                ),
              ),
              SizedBox(width: 10.0 * screenWidthRatio),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DisplayAllContactUsPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.all(16 * screenWidthRatio),
                ),
                child: Text(
                  'Show all contact',
                  style: TextStyle(fontSize: 16 * screenWidthRatio),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildAddExerciseForm() {
    final formKey = GlobalKey<FormState>();
    TextEditingController exerciseName = TextEditingController();
    TextEditingController exerciseDescription = TextEditingController();
    TextEditingController exerciseResps = TextEditingController();
    TextEditingController exerciseSets = TextEditingController();

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Add Exercise',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            buildInputField(
              "Name",
              exerciseName,
            ),
            const SizedBox(height: 16),
            buildInputField(
              "Description",
              exerciseDescription,
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            buildInputField(
              "Reps",
              exerciseResps,
            ),
            const SizedBox(height: 16),
            buildInputField(
              "Sets",
              exerciseSets,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () async {
                // if fields are empty
                if (exerciseName.text.isEmpty ||
                    exerciseDescription.text.isEmpty ||
                    exerciseResps.text.isEmpty ||
                    exerciseSets.text.isEmpty) {
                  MotionToast.error(
                    title: const Text('Empty Fields'),
                    description: const Text('Please fill all the fields'),
                    animationType: AnimationType.fromBottom,
                    position: MotionToastPosition.bottom,
                  ).show(context);
                  return;
                }

                if (formKey.currentState!.validate()) {
                  // Add user to Firebase
                  try {
                    DatabaseReference newUserRef =
                        _databaseRef.child('exercises').push();

                    final Map<String, dynamic> userData = {
                      'name': exerciseName.text,
                      'reps': exerciseResps.text,
                      'sets': exerciseSets.text,
                      'description': exerciseDescription.text,
                    };

                    await newUserRef.set(userData);
                    exerciseName.clear();
                    exerciseDescription.clear();
                    exerciseResps.clear();
                    exerciseSets.clear();
                    MotionToast.success(
                      title: const Text('Success'),
                      description: const Text('Exercise added successfully'),
                      animationType: AnimationType.fromBottom,
                      position: MotionToastPosition.bottom,
                    ).show(context);
                  } catch (e) {
                    if (kDebugMode) {
                      print(e);
                    }
                    MotionToast.error(
                      title: const Text('Error'),
                      description: const Text('Something went wrong'),
                      animationType: AnimationType.fromBottom,
                      position: MotionToastPosition.bottom,
                    ).show(context);
                  }
                }
              },
              child: const Text('Submit'),
            ),
          ],
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
