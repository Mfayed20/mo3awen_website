import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import '../edit/edit_users_admin.dart';

class DisplayAllUsers extends StatefulWidget {
  final String currentHosName;

  const DisplayAllUsers({Key? key, required this.currentHosName})
      : super(key: key);

  @override
  State<DisplayAllUsers> createState() => _DisplayAllUsersState();
}

class _DisplayAllUsersState extends State<DisplayAllUsers> {
  late Query dbRef;
  DatabaseReference reference = FirebaseDatabase.instance.ref().child('users');

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance
        .ref()
        .child('users')
        .orderByChild('hosName')
        .equalTo(widget.currentHosName);
  }

  Widget listItem({required Map users}) {
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
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            users['usertype'],
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
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
                          builder: (_) => EditUsersAdmin(uid: users['key'])));
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
              GestureDetector(
                onTap: () {
                  reference.child(users['key']).remove();
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
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FirebaseAnimatedList(
        query: dbRef,
        itemBuilder: (BuildContext context, DataSnapshot snapshot,
            Animation<double> animation, int index) {
          Map users = snapshot.value as Map;
          users['key'] = snapshot.key;
          return users['usertype'] != 'admin'
              ? listItem(users: users)
              : Container();
        },
      ),
    );
  }
}
