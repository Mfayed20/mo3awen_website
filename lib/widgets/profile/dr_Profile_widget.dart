import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../pages/displaylist/display_all_exercises_page_normal_user.dart';
import '../../pages/displaylist/display_all_users_page.dart';

class DrProfileWidget extends StatefulWidget {
  const DrProfileWidget({super.key});

  @override
  DrProfileWidgetState createState() => DrProfileWidgetState();
}

class DrProfileWidgetState extends State<DrProfileWidget> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final DatabaseReference _databaseRef = FirebaseDatabase.instance.ref();
  late User _user;
  late DatabaseReference _userRef;
  String fName = '';
  String lName = '';
  String usertype = '';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0 * screenWidthRatio),
          child: Column(
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
                  'Show Patients',
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
        )
      ],
    );
  }

  Widget _buildAddExerciseForm() {
    final _formKey = GlobalKey<FormState>();
    TextEditingController exerciseNameController = TextEditingController();
    TextEditingController exerciseDescribtionController =
        TextEditingController();
    TextEditingController exerciseRepsController = TextEditingController();
    TextEditingController exerciseSetsController = TextEditingController();

    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Request Exercise',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            buildInputField(
              "Exersice Name",
              exerciseNameController,
            ),
            const SizedBox(height: 16),
            buildInputField(
              "Exersice desscription",
              exerciseDescribtionController,
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            buildInputField(
              "Reps",
              exerciseRepsController,
            ),
            const SizedBox(height: 16),
            buildInputField(
              "sets",
              exerciseSetsController,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () async {
                // if fields are empty
                if (exerciseNameController.text.isEmpty ||
                    exerciseDescribtionController.text.isEmpty ||
                    exerciseRepsController.text.isEmpty ||
                    exerciseSetsController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please fill all fields.'),
                    ),
                  );
                  return;
                }
                if (_formKey.currentState!.validate()) {
                  // Add user to Firebase
                  try {
                    DatabaseReference newUserRef =
                        _databaseRef.child('exercisesR').push();

                    final Map<String, dynamic> userData = {
                      'name': exerciseNameController.text,
                      'reps': exerciseRepsController.text,
                      'sets': exerciseSetsController.text,
                      'description': exerciseDescribtionController.text,
                    };

                    await newUserRef.set(userData);
                    exerciseRepsController.clear();
                    exerciseSetsController.clear();
                    exerciseDescribtionController.clear();
                    exerciseNameController.clear();

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Exercise request sent successfully.'),
                      ),
                    );
                  } catch (e) {
                    if (kDebugMode) {
                      print(e);
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Error sending request: $e'),
                      ),
                    );
                  }
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('User added successfully.'),
                  ),
                );
              },
              child: const Text('Send Request'),
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
