import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mo3awen_website/widgets/SignUpInPage/sign_in_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: const [
                  SignIn(),
                ],
              ),
            ),
          );
        });
  }
}
