import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/adding_to_base/add_patient.dart';

class AddPatientPage extends StatelessWidget {
  const AddPatientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: const [
                AddPatient(),
              ],
            ),
          ),
        );
      },
    );
  }
}
