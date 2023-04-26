import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../profile/dr_Profile_widget.dart';
import '../widgets/footer/footer_widget.dart';
import '../widgets/nav_bar/nav_bar.dart';

class DrProfilePage extends StatelessWidget {
  const DrProfilePage({Key? key}) : super(key: key);

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
                DrProfileWidget(),
                const FooterWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}