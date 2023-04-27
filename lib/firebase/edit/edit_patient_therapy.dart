import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class EditPatientTherapy extends StatefulWidget {
  const EditPatientTherapy({Key? key, required this.uid}) : super(key: key);

  final String uid;

  @override
  State<EditPatientTherapy> createState() => _EditPatientTherapyState();
}

class _EditPatientTherapyState extends State<EditPatientTherapy> {
  final userFirstNameController = TextEditingController();
  final userLastNameController = TextEditingController();
  final userTherapySessionController = TextEditingController();
  final userTherapyGoalsController = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('users');
    getStudentData();
  }

  void getStudentData() async {
    DataSnapshot snapshot = await dbRef.child(widget.uid).get();

    Map user = snapshot.value as Map;

    userFirstNameController.text = user['f-name'];
    userLastNameController.text = user['l-name'];
    userTherapySessionController.text = user['therapy']['session'];
    userTherapyGoalsController.text = user['therapy']['goals'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updating User Data'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'User Information',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userTherapySessionController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ' therapy session',
                  hintText: 'Enter Patient therapy session',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userTherapyGoalsController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Therapy Goals',
                  hintText: 'Enter Therapy Goals',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {
                  Map<String, dynamic> students = {
                    'therapy': {
                      'session': userTherapySessionController.text,
                      'goals': userTherapyGoalsController.text,
                    },
                  };

                  dbRef
                      .child(widget.uid)
                      .update(students)
                      .then((value) => {Navigator.pop(context)});
                },
                child: const Text('Update Data'),
                color: Colors.blue,
                textColor: Colors.white,
                minWidth: 300,
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
