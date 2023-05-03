import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '../widgets/profile/admin_profile_widget.dart';
import '../widgets/profile/dr_Profile_widget.dart';
import '../widgets/profile/patient_Profile_widget.dart';
import '../widgets/footer/footer_widget.dart';
import '../widgets/nav_bar/nav_bar.dart';
import '../widgets/profile/normal_user_profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const NavBar(),
                _profilePicker(),
                const FooterWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget _profilePicker() {
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    final uid = user.uid;
    final userRef = FirebaseDatabase.instance.ref().child('users/$uid');

    return StreamBuilder<DataSnapshot>(
      stream: userRef.onValue.map((event) => event.snapshot),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final userData = snapshot.data?.value as Map<String, dynamic>;
        if (userData['usertype'] == 'admin') {
          return const AdminProfileWidget();
        } else if (userData['usertype'] == 'dr') {
          return const DrProfileWidget();
        } else if (userData['usertype'] == 'patient') {
          return PatientProfileWidget();
        } else if (userData['usertype'] == 'user') {
          return NormalUserProfileWidget();
        } else {
          return const Center(child: Text('Unknown user type'));
        }
      },
    );
  } else {
    return const Center(child: Text('User not authenticated'));
  }
}
