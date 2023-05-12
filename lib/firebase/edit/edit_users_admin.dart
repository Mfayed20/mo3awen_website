import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  String? _selectedGender; // Add a variable to store the selected gender
  late DatabaseReference dbRef;
  bool _isDoctor = true;
  late String isMale;

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
    _selectedGender = user['gender'];
    userNationalityController.text = user['nationality'];
    if (user['associated-dr'] != null) {
      userAssociatedDoctorController.text = user['associated-dr'];
    } else {
      userAssociatedDoctorController.text = '';
    }
    setState(() {}); // Add this line to trigger a rebuild of the widget
    if (kDebugMode) {
      print("gender: $_selectedGender");
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
                buildDatePicker(
                    context, userDobController), // Use the DatePicker widget
                const SizedBox(
                  height: 30,
                ),
                buildGenderDropdown(
                  value: _selectedGender,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedGender = newValue;
                    });
                  },
                ),

                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    _showCustomCountryPicker(
                        context, userNationalityController);
                  },
                  child: AbsorbPointer(
                    child: TextField(
                      controller: userNationalityController,
                      decoration: const InputDecoration(
                        labelText: 'Nationality',
                        hintText: 'Select Nationality',
                        border: OutlineInputBorder(),
                      ),
                    ),
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
                      'gender': _selectedGender.toString(),
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

  void _showCustomCountryPicker(
      BuildContext context, TextEditingController nationalityController) {
    showDialog(
      context: context,
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height / 8,
        width: MediaQuery.of(context).size.width,
        child: DraggableScrollableSheet(
          initialChildSize: 0.4,
          minChildSize: 0.4,
          maxChildSize: 0.4,
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: CountryPickerDialog(
                titlePadding: const EdgeInsets.all(8.0),
                searchCursorColor: Colors.pinkAccent,
                searchInputDecoration:
                    const InputDecoration(hintText: 'Search...'),
                isSearchable: true,
                title: const Text('Select your country'),
                onValuePicked: (Country country) {
                  nationalityController.text = country.name;
                },
                itemBuilder: _buildDialogItem,
                itemFilter: (Country country) =>
                    country.name !=
                    "Israel", // Added this line to filter out Israel
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          const SizedBox(width: 8.0),
          Text(country.name),
        ],
      );

  Widget buildDatePicker(
      BuildContext context, TextEditingController dobController) {
    return GestureDetector(
      onTap: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (pickedDate != null) {
          dobController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
        }
      },
      child: AbsorbPointer(
        child: TextField(
          controller: dobController,
          decoration: const InputDecoration(
            labelText: 'Date of Birth',
            labelStyle: TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildGenderDropdown({
    required String? value,
    required Function(String?) onChanged,
  }) {
    return DropdownButtonFormField<String>(
      value:
          value, // This will set the initial value based on the gender saved in the Firebase realtime database
      decoration: InputDecoration(
        labelText: 'Gender',
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade500, width: 1.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 1.0),
        ),
        filled: true,
        fillColor: Colors.grey.shade50,
      ),
      items: const [
        DropdownMenuItem(value: 'male', child: Text('Male')),
        DropdownMenuItem(value: 'female', child: Text('Female')),
      ],
      onChanged: onChanged,
    );
  }
}
