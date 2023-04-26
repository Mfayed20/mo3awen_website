import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../pages/add_docter_page.dart';
import '../pages/add_patient_page.dart';
import '../pages/home_page.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddDocterPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.all(16 * screenWidthRatio),
                ),
                child: Text(
                  'Add Doctor',
                  style: TextStyle(fontSize: 16 * screenWidthRatio),
                ),
              ),
              SizedBox(width: 10.0 * screenWidthRatio),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddPatientPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.all(16 * screenWidthRatio),
                ),
                child: Text(
                  'Add Patient',
                  style: TextStyle(fontSize: 16 * screenWidthRatio),
                ),
              ),
              SizedBox(width: 10.0 * screenWidthRatio),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.all(16 * screenWidthRatio),
                ),
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 16 * screenWidthRatio),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
