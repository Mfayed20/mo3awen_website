import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class DisplayAllExercisesNormalUser extends StatefulWidget {
  const DisplayAllExercisesNormalUser({Key? key}) : super(key: key);

  @override
  State<DisplayAllExercisesNormalUser> createState() =>
      _DisplayAllExercisesNormalUserState();
}

class _DisplayAllExercisesNormalUserState
    extends State<DisplayAllExercisesNormalUser> {
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
