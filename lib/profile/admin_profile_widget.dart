import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../pages/display_all_exercises_page.dart';
import '../pages/display_all_users_page.dart';

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
  // Add user form related variables
  final _formKey = GlobalKey<FormState>();
  String _firstName = '';
  String _lastName = '';
  String _dob = '';
  String _gender = '';
  String _nationality = '';
  String _email = '';
  String _password = '';
  String _associatedDr = '';
  bool _isDoctor = true;
  bool _isExerciseFocus = false;

  @override
  void initState() {
    super.initState();
    _user = _auth.currentUser!;
    if (kDebugMode) {
      print("_user: $_user");
      print("\nuid: ${_user.uid}");
    }
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
        _isExerciseFocus ? _buildAddExerciseForm() : _buildAddUserForm(),
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
                  setState(() {
                    _isExerciseFocus = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.all(16 * screenWidthRatio),
                ),
                child: Text(
                  'Add User',
                  style: TextStyle(fontSize: 16 * screenWidthRatio),
                ),
              ),
              SizedBox(width: 10.0 * screenWidthRatio),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isExerciseFocus = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.all(16 * screenWidthRatio),
                ),
                child: Text(
                  'Add Exercise',
                  style: TextStyle(fontSize: 16 * screenWidthRatio),
                ),
              ),
              SizedBox(width: 10.0 * screenWidthRatio),
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
            ],
          ),
        )
      ],
    );
  }

  Widget _buildAddUserForm() {
    final _formKey = GlobalKey<FormState>();
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController dobController = TextEditingController();
    TextEditingController genderController = TextEditingController();
    TextEditingController nationalityController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController associatedDrController = TextEditingController();

    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Add User',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text('Doctor'),
                    leading: Radio<bool>(
                      value: true,
                      groupValue: _isDoctor,
                      onChanged: (bool? value) {
                        setState(() {
                          _isDoctor = value!;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text('Patient'),
                    leading: Radio<bool>(
                      value: false,
                      groupValue: _isDoctor,
                      onChanged: (bool? value) {
                        setState(() {
                          _isDoctor = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            buildInputField(
              "First Name",
              firstNameController,
            ),
            const SizedBox(height: 16),
            buildInputField(
              "Last Name",
              lastNameController,
            ),
            const SizedBox(height: 16),
            buildInputField(
              "Date of Birth",
              dobController,
            ),
            const SizedBox(height: 16),
            buildInputField(
              "Gender",
              genderController,
            ),
            const SizedBox(height: 16),
            buildInputField(
              "Nationality",
              nationalityController,
            ),
            const SizedBox(height: 16),
            buildInputField(
              "Email",
              emailController,
            ),
            const SizedBox(height: 16),
            buildInputField(
              "Password",
              passwordController,
              isPassword: true,
            ),
            if (!_isDoctor)
              Column(
                children: [
                  const SizedBox(height: 16),
                  buildInputField(
                    "Associated Dr. Name",
                    associatedDrController,
                  ),
                ],
              ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () async {
                // if fields are empty
                if (firstNameController.text.isEmpty ||
                    lastNameController.text.isEmpty ||
                    dobController.text.isEmpty ||
                    genderController.text.isEmpty ||
                    nationalityController.text.isEmpty ||
                    emailController.text.isEmpty ||
                    passwordController.text.isEmpty ||
                    (!_isDoctor && associatedDrController.text.isEmpty)) {
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
                        _databaseRef.child('users').push();

                    final Map<String, dynamic> userData = {
                      'DoB': dobController.text,
                      'email': emailController.text,
                      'f-name': firstNameController.text,
                      'gender': genderController.text,
                      'l-name': lastNameController.text,
                      'nationality': nationalityController.text,
                      'usertype': _isDoctor ? 'dr' : 'patient',
                      if (!_isDoctor && associatedDrController.text.isNotEmpty)
                        'associated-dr': associatedDrController.text,
                    };

                    if (!_isDoctor) {
                      userData['therapy'] = {
                        'session': '',
                        'goals': '',
                      };
                    }

                    await newUserRef.set(userData);

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('User added successfully.'),
                      ),
                    );
                  } catch (e) {
                    if (kDebugMode) {
                      print(e);
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Error adding user: $e'),
                      ),
                    );
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

  Widget _buildAddExerciseForm() {
    final _formKey = GlobalKey<FormState>();
    TextEditingController exerciseName = TextEditingController();
    TextEditingController exerciseDescription = TextEditingController();
    TextEditingController exerciseResps = TextEditingController();
    TextEditingController exerciseSets = TextEditingController();

    return Form(
      key: _formKey,
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
                        _databaseRef.child('exercises').push();

                    final Map<String, dynamic> userData = {
                      'name': exerciseName.text,
                      'reps': exerciseResps.text,
                      'sets': exerciseSets.text,
                      'description': exerciseDescription.text,
                    };

                    await newUserRef.set(userData);

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Exercise added successfully.'),
                      ),
                    );
                  } catch (e) {
                    if (kDebugMode) {
                      print(e);
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Error adding user: $e'),
                      ),
                    );
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
