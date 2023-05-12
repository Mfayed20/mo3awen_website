import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import '../edit/edit_exercises_admin.dart';

class DisplayAllExercisesAdmin extends StatefulWidget {
  const DisplayAllExercisesAdmin({Key? key}) : super(key: key);

  @override
  State<DisplayAllExercisesAdmin> createState() =>
      _DisplayAllExercisesAdminState();
}

class _DisplayAllExercisesAdminState extends State<DisplayAllExercisesAdmin> {
  Query dbRef = FirebaseDatabase.instance.ref().child('exercises');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('exercises');

  Widget listItem({required Map exercises}) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue[400],
        borderRadius: BorderRadius.circular(10), // add rounded corners
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${exercises['name'][0].toUpperCase()}${exercises['name']?.substring(1) ?? ''}',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Reps: ${exercises['reps'] ?? ''} Sets: ${exercises['sets'] ?? ''}',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '${exercises['description']?.isNotEmpty == true ? exercises['description'][0].toUpperCase() + exercises['description'].substring(1) : ''}',
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => EditExercisesAdmin(uid: exercises['key']),
                    ),
                  );
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              GestureDetector(
                onTap: () {
                  reference.child(exercises['key']).remove();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.red[700],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FirebaseAnimatedList(
            query: dbRef,
            itemBuilder: (BuildContext context, DataSnapshot snapshot,
                Animation<double> animation, int index) {
              Map exercise = snapshot.value as Map;
              exercise['key'] = snapshot.key;

              return listItem(exercises: exercise);
            },
          ),
        ),
      ],
    );
  }
}
