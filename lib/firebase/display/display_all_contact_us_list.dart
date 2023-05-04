import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import '../edit/edit_exercises_admin.dart';

class DisplayAllContactUsAdmin extends StatefulWidget {
  const DisplayAllContactUsAdmin({Key? key}) : super(key: key);

  @override
  State<DisplayAllContactUsAdmin> createState() =>
      _DisplayAllContactUsAdminState();
}

class _DisplayAllContactUsAdminState extends State<DisplayAllContactUsAdmin> {
  Query dbRef = FirebaseDatabase.instance.ref().child('contact');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('contact');

  Widget listItem({required Map contact}) {
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
            '${contact['name'][0].toUpperCase()}${contact['name']?.substring(1) ?? ''}',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Email: ${contact['email'] ?? ''} Subject: ${contact['subject'] ?? ''}',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '${contact['message']?.isNotEmpty == true ? contact['message'][0].toUpperCase() + contact['message'].substring(1) : ''}',
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

              return listItem(contact: exercise);
            },
          ),
        ),
      ],
    );
  }
}
