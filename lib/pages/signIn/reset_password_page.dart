import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../widgets/SignUpInPage/reset_password_widget.dart';
import '../mainpages/about_us_page.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const AboutUsPage();
          } else {
            return const Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    ResetPassword(),
                  ],
                ),
              ),
            );
          }
        });
  }
}
