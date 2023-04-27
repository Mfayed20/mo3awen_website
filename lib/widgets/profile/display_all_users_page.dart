import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '../../firebase/display/display_all_associted_patients_list.dart';
import '../../firebase/display/display_all_users_list.dart';
import '../footer/footer_widget.dart';
import '../nav_bar/nav_bar.dart';

class DisplayUsersPage extends StatelessWidget {
  const DisplayUsersPage({Key? key}) : super(key: key);

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
          return const DsplayAssociatedPatient();
        } else {
          return const Center(child: Text('Unknown user type'));
        }
      },
    );
  } else {
    return const Center(child: Text('User not authenticated'));
  }
}
