import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class EditDataBase extends StatefulWidget {
  const EditDataBase({Key? key, required this.studentKey}) : super(key: key);

  final String studentKey;

  @override
  State<EditDataBase> createState() => _EditDataBaseState();
}

class _EditDataBaseState extends State<EditDataBase> {
  final userNameController = TextEditingController();
  final userAgeController = TextEditingController();
  final userSalaryController = TextEditingController();
  final userGenderController = TextEditingController();
  final userDobController = TextEditingController();
  final userHosNameController = TextEditingController();
  final userHosAddressController = TextEditingController();
  final usernationalityController = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('users');
    getStudentData();
  }

  void getStudentData() async {
    DataSnapshot snapshot = await dbRef.child(widget.studentKey).get();

    Map student = snapshot.value as Map;

    userNameController.text = student['f-name'];
    userAgeController.text = student['l-name'];
    userSalaryController.text = student['usertype'];
    userDobController.text = student['DoB'];
    userGenderController.text = student['gender'];
    userHosNameController.text = student['hosName'];
    userHosAddressController.text = student['hosAddress'];
    usernationalityController.text = student['nationality'];
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
                controller: userNameController,
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
                controller: userAgeController,
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
                controller: userSalaryController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'account type',
                  hintText: 'Enter Your account type',
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
                controller: userHosNameController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Hospital Name',
                  hintText: 'Enter Hospital Name',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userHosAddressController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Hospital Address',
                  hintText: 'Enter Hospital Address',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: usernationalityController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nationality',
                  hintText: 'Enter Nationality',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {
                  Map<String, String> students = {
                    'f-name': userNameController.text,
                    'l-name': userAgeController.text,
                    'usertype': userSalaryController.text,
                    'gender': userGenderController.text,
                    'DoB': userDobController.text,
                    'hosName': userHosNameController.text,
                    'hosAddress': userHosAddressController.text,
                    'nationality': usernationalityController.text,
                  };

                  dbRef
                      .child(widget.studentKey)
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
