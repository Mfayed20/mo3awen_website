import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class DisplayAllExercisesRequestAdmin extends StatefulWidget {
  const DisplayAllExercisesRequestAdmin({Key? key}) : super(key: key);

  @override
  State<DisplayAllExercisesRequestAdmin> createState() =>
      _DisplayAllExercisesRequestAdminState();
}

class _DisplayAllExercisesRequestAdminState
    extends State<DisplayAllExercisesRequestAdmin> {
  Query dbRef = FirebaseDatabase.instance.ref().child('requestedExercises');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('requestedExercises');

  Widget listItem({required Map requestedExercises}) {
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
            '${requestedExercises['name'][0].toUpperCase()}${requestedExercises['name']?.substring(1) ?? ''}',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Reps: ${requestedExercises['reps'] ?? ''} Sets: ${requestedExercises['sets'] ?? ''}',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '${requestedExercises['description']?.isNotEmpty == true ? requestedExercises['description'][0].toUpperCase() + requestedExercises['description'].substring(1) : ''}',
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 6,
              ),
              GestureDetector(
                onTap: () {
                  reference.child(requestedExercises['key']).remove();
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

              return listItem(requestedExercises: exercise);
            },
          ),
        ),
      ],
    );
  }
}
