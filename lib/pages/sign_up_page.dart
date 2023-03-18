import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mo3awen_website/pages/sign_in_page.dart';
import 'package:mo3awen_website/widgets/SignUpInPage/sign_up_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SignInPage();
          } else {
            return Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: const [
                    SignUp(),
                  ],
                ),
              ),
            );
          }
        });
  }
}
