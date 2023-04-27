import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '../profile/admin_profile_widget.dart';
import '../profile/dr_Profile_widget.dart';
import '../profile/get_all_accounts.dart';
import '../profile/patient_Profile_widget.dart';
import '../widgets/footer/footer_widget.dart';
import '../widgets/nav_bar/nav_bar.dart';

class GetAllAccounts extends StatelessWidget {
  const GetAllAccounts({Key? key}) : super(key: key);

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
                FetchData(),
                const FooterWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}
