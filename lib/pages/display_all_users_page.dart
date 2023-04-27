import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '../profile/display_all_users.dart';
import '../profile/display_all_associted_patients.dart';
import '../widgets/footer/footer_widget.dart';
import '../widgets/nav_bar/nav_bar.dart';

class DisplayAllUsersPage extends StatelessWidget {
  const DisplayAllUsersPage({Key? key}) : super(key: key);

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
          return const DisplayAllUsers();
        } else if (userData['usertype'] == 'dr') {
          return DsplayAssociatedPatient();
        } else {
          return const Center(child: Text('Unknown user type'));
        }
      },
    );
  } else {
    return const Center(child: Text('User not authenticated'));
  }
}
