import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../pages/add_docter_page.dart';
import '../pages/add_patient_page.dart';
import '../pages/home_page.dart';

class AdminProfileWidget extends StatefulWidget {
  @override
  _AdminProfileWidgetState createState() => _AdminProfileWidgetState();
}

class _AdminProfileWidgetState extends State<AdminProfileWidget> {
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

    if (userData != null) {
      setState(() {
        fName = userData['f-name'] ?? '';
        lName = userData['l-name'] ?? '';
        usertype = userData['usertype'] ?? '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _buildProfileHeader();
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
                '$fName $lName',
                style: TextStyle(
                    fontSize: 24.0 * screenWidthRatio,
                    fontWeight: FontWeight.bold),
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
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddDocterPage()),
                );
              },
              child: const Text('Add Doctor'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddPatientPage()),
                );
              },
              child: const Text('Add Patient'),
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
