import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../firebase/display/display_all_exercises_list_normal_user.dart';

class DisplayAllExercisesNormalUserPage extends StatelessWidget {
  const DisplayAllExercisesNormalUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('All Exercises'),
          ),
          body: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: const DisplayAllExercisesNormalUser(),
          ),
        );
      },
    );
  }
}
