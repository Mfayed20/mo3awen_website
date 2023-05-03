import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class EditUsersAdmin extends StatefulWidget {
  const EditUsersAdmin({Key? key, required this.uid}) : super(key: key);

  final String uid;

  @override
  State<EditUsersAdmin> createState() => _EditUsersAdminState();
}

class _EditUsersAdminState extends State<EditUsersAdmin> {
  final userFirstNameController = TextEditingController();
  final userLastNameController = TextEditingController();
  final userTypeController = TextEditingController();
  final userGenderController = TextEditingController();
  final userDobController = TextEditingController();
  final userNationalityController = TextEditingController();
  final userAssociatedDoctorController = TextEditingController();

  late DatabaseReference dbRef;
  bool _isDoctor = true;

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
    userTypeController.text = user['usertype'];
    userDobController.text = user['DoB'];
    userGenderController.text = user['gender'];
    userNationalityController.text = user['nationality'];
    if (user['associated-dr'] != null) {
      userAssociatedDoctorController.text = user['associated-dr'];
    } else {
      userAssociatedDoctorController.text = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update User Data'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
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
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text('Doctor'),
                        leading: Radio<bool>(
                          value: true,
                          groupValue: _isDoctor,
                          onChanged: (bool? value) {
                            setState(() {
                              _isDoctor = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text('Patient'),
                        leading: Radio<bool>(
                          value: false,
                          groupValue: _isDoctor,
                          onChanged: (bool? value) {
                            setState(() {
                              _isDoctor = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: userFirstNameController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                    hintText: 'Enter Your First Name',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: userLastNameController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'last name',
                    hintText: 'Enter Your last nam',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: userDobController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Data of birth',
                    hintText: 'Enter Data of birth',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: userGenderController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Gender',
                    hintText: 'Enter Gnder',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: userNationalityController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nationality',
                    hintText: 'Enter Nationality',
                  ),
                ),
                if (!_isDoctor)
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: userAssociatedDoctorController,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Associated Doctor',
                          hintText: 'Enter Associated Doctor',
                        ),
                      ),
                    ],
                  ),
                const SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () async {
                    Map<String, String> user = {
                      'f-name': userFirstNameController.text,
                      'l-name': userLastNameController.text,
                      'usertype': _isDoctor ? 'doctor' : 'patient',
                      'gender': userGenderController.text,
                      'DoB': userDobController.text,
                      'nationality': userNationalityController.text,
                    };
                    if (!_isDoctor) {
                      user['associated-dr'] =
                          userAssociatedDoctorController.text;
                    } else {
                      DataSnapshot snapshot =
                          await dbRef.child(widget.uid).get();
                      if (snapshot.hasChild('associated-dr')) {
                        dbRef.child(widget.uid).child('associated-dr').remove();
                      }
                    }
                    dbRef
                        .child(widget.uid)
                        .update(user)
                        .then((value) => {Navigator.pop(context)});
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  minWidth: 300,
                  height: 40,
                  child: const Text('Update User Data'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
