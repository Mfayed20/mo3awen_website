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
  final userTherapyFeedbackController = TextEditingController();
  final userTherapyExercisesController = TextEditingController();

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
    if (user['therapy'] != null) {
      userTherapySessionController.text = user['therapy']['session'];
      userTherapyGoalsController.text = user['therapy']['goals'];
      userTherapyFeedbackController.text = user['therapy']['feedback'];
      userTherapyExercisesController.text = user['therapy']['exercises'];
    } else {
      userTherapySessionController.text = '';
      userTherapyGoalsController.text = '';
      userTherapyFeedbackController.text = '';
      userTherapyExercisesController.text = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update User Therapy Sessions'),
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
                'User Therapy session',
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
                  labelText: 'Therapy Session',
                  hintText: 'Enter Therapy session Name',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userTherapyExercisesController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Therapy exercises',
                  hintText: 'Enter Therapy exercises',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userTherapyFeedbackController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Therapy Feedback',
                  hintText: 'Enter Therapy Feedback',
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
                      'exercises': userTherapyExercisesController.text,
                      'feedback': userTherapyFeedbackController.text,
                    },
                  };

                  dbRef
                      .child(widget.uid)
                      .update(students)
                      .then((value) => {Navigator.pop(context)});
                },
                color: Colors.blue,
                textColor: Colors.white,
                minWidth: 300,
                height: 40,
                child: const Text('Update Thesrapy Session'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
