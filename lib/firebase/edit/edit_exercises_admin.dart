// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';

// class EditExercisesAdmin extends StatefulWidget {
//   const EditExercisesAdmin({Key? key, required this.uid}) : super(key: key);

//   final String uid;

//   @override
//   State<EditExercisesAdmin> createState() => _EditExercisesAdminState();
// }

// class _EditExercisesAdminState extends State<EditExercisesAdmin> {
//   final exerciseNameController = TextEditingController();
//   final exerciseDescribtionController = TextEditingController();
//   final exerciseRepsController = TextEditingController();
//   final exerciseSetsController = TextEditingController();

//   late DatabaseReference dbRef;

//   @override
//   void initState() {
//     super.initState();
//     dbRef = FirebaseDatabase.instance.ref().child('exercises');
//     getStudentData();
//   }

//   void getStudentData() async {
//     DataSnapshot snapshot = await dbRef.child(widget.uid).get();

//     Map exercise = snapshot.value as Map;

//     exerciseNameController.text = exercise['name'];
//     exerciseDescribtionController.text = exercise['description'];
//     exerciseRepsController.text = exercise['reps'];
//     exerciseSetsController.text = exercise['sets'];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Update Exercise Data'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 50,
//               ),
//               const Text(
//                 'Exercise Information',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               TextField(
//                 controller: exerciseNameController,
//                 keyboardType: TextInputType.text,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Exercise Name',
//                   hintText: 'Exercise Name',
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               TextField(
//                 controller: exerciseDescribtionController,
//                 keyboardType: TextInputType.number,
//                 maxLines: 3,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Exercise Description',
//                   hintText: 'Exercise Description',
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               TextField(
//                 controller: exerciseRepsController,
//                 keyboardType: TextInputType.phone,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Exercise Reps',
//                   hintText: 'Exercise Reps',
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               TextField(
//                 controller: exerciseSetsController,
//                 keyboardType: TextInputType.phone,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Exercise Sets',
//                   hintText: 'Exercise Sets',
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               MaterialButton(
//                 onPressed: () {
//                   Map<String, String> students = {
//                     'name': exerciseNameController.text,
//                     'description': exerciseDescribtionController.text,
//                     'reps': exerciseRepsController.text,
//                     'sets': exerciseSetsController.text,
//                   };

//                   dbRef
//                       .child(widget.uid)
//                       .update(students)
//                       .then((value) => {Navigator.pop(context)});
//                 },
//                 color: Colors.blue,
//                 textColor: Colors.white,
//                 minWidth: 300,
//                 height: 40,
//                 child: const Text('Update Exercise'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class EditExercisesAdmin extends StatefulWidget {
  const EditExercisesAdmin({Key? key, required this.uid}) : super(key: key);

  final String uid;

  @override
  State<EditExercisesAdmin> createState() => _EditExercisesAdminState();
}

class _EditExercisesAdminState extends State<EditExercisesAdmin> {
  final exerciseNameController = TextEditingController();
  final exerciseDescribtionController = TextEditingController();
  final exerciseRepsController = TextEditingController();
  final exerciseSetsController = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('exercises');
    getStudentData();
  }

  void getStudentData() async {
    DataSnapshot snapshot = await dbRef.child(widget.uid).get();

    Map exercise = snapshot.value as Map;

    exerciseNameController.text = exercise['name'];
    exerciseDescribtionController.text = exercise['description'];
    exerciseRepsController.text = exercise['reps'];
    exerciseSetsController.text = exercise['sets'];
  }

  Widget buildInputField(String label, TextEditingController controller,
      {bool isPassword = false, int maxLines = 1}) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.grey),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 2),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Exercise Data'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Exercise Information',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              buildInputField(
                'Exercise Name',
                exerciseNameController,
              ),
              const SizedBox(
                height: 30,
              ),
              buildInputField(
                'Exercise Description',
                exerciseDescribtionController,
                maxLines: 3,
              ),
              const SizedBox(
                height: 30,
              ),
              buildInputField(
                'Exercise Reps',
                exerciseRepsController,
              ),
              const SizedBox(
                height: 30,
              ),
              buildInputField(
                'Exercise Sets',
                exerciseSetsController,
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {
                  Map<String, String> students = {
                    'name': exerciseNameController.text,
                    'description': exerciseDescribtionController.text,
                    'reps': exerciseRepsController.text,
                    'sets': exerciseSetsController.text,
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
                child: const Text('Update Exercise'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
