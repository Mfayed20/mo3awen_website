import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../pages/display_all_users_page.dart';
import '../pages/home_page.dart';

class DrProfileWidget extends StatefulWidget {
  @override
  _DrProfileWidgetState createState() => _DrProfileWidgetState();
}

class _DrProfileWidgetState extends State<DrProfileWidget> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final DatabaseReference _databaseRef = FirebaseDatabase.instance.ref();
  late User _user;
  late DatabaseReference _userRef;

  String fName = '';
  String lName = '';
  String dob = '';
  String gender = '';
  String hospitalName = '';
  String hospitalAdd = '';
  String nationality = '';

  @override
  void initState() {
    super.initState();
    _user = _auth.currentUser!;
    print("_user: " + _user.toString());
    print("\nuid: " + _user.uid);

    // _userRef = _databaseRef.child('admin').child(_user.uid);
    _userRef = _databaseRef.child('users').child(_user.uid);

    _getUserData();
  }

  Future<void> _getUserData() async {
    DataSnapshot snapshot = (await _userRef.once()).snapshot;
    Map<String, dynamic>? userData = snapshot.value as Map<String, dynamic>?;

    if (userData != null) {
      setState(() {
        fName = userData['f-name'] ?? '';
        lName = userData['l-name'] ?? '';
        dob = userData['DoB'] ?? '';
        gender = userData['gender'] ?? '';
        hospitalName = userData['hosName'] ?? '';
        hospitalAdd = userData['hosAddress'] ?? '';
        nationality = userData['nationality'] ?? '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _buildProfileHeader();
  }

  Widget _buildProfileHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dr. Name: $fName $lName\nDate of Birth: $dob\nGender: $gender\nHospital Name: $hospitalName\nHospital Address: $hospitalAdd\nNationality: $nationality',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const Text('Set patient goals'),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DisplayUsersPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.all(16),
                ),
                child: Text(
                  'show all patients',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const Text('Search'),
            ),
          ],
        ),
      ],
    );
  }
}
