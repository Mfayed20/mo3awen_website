import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import '../edit/edit_patient_therapy.dart';

class DsplayAssociatedPatient extends StatefulWidget {
  const DsplayAssociatedPatient({Key? key}) : super(key: key);

  @override
  State<DsplayAssociatedPatient> createState() =>
      _DsplayAssociatedPatientState();
}

class _DsplayAssociatedPatientState extends State<DsplayAssociatedPatient> {
  Widget listItem({required Map users}) {
    final user = FirebaseAuth.instance.currentUser;
    String? uid;
    if (user != null) {
      uid = user.uid;
    }

    if (users['associated-dr'] != uid) {
      // Skip this item if usertype doesn't match uid
      return SizedBox.shrink();
    }

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
            '${users['f-name'][0].toUpperCase()}${users['f-name'].substring(1)} ${users['l-name'][0].toUpperCase()}${users['l-name'].substring(1)}',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Session: ${users['therapy']['session']}, Goals: ${users['therapy']['goals']}',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
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
                          builder: (_) =>
                              EditPatientTherapy(uid: users['key'])));
                },
                child: Row(
                  children: const [
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
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    String? uid;
    if (user != null) {
      uid = user.uid;
    }

    Query dbRef = FirebaseDatabase.instance
        .ref()
        .child('users')
        .orderByChild('associated-dr')
        .equalTo(uid);

    return Container(
      height: 5000,
      child: FirebaseAnimatedList(
        query: dbRef,
        itemBuilder: (BuildContext context, DataSnapshot snapshot,
            Animation<double> animation, int index) {
          Map student = snapshot.value as Map;
          student['key'] = snapshot.key;

          return listItem(users: student);
        },
      ),
    );
  }
}