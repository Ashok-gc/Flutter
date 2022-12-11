import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import '../model/student.dart';

class StudentDetailsScreen extends StatefulWidget {
  const StudentDetailsScreen({Key? key}) : super(key: key);

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  final _ageController = TextEditingController();
  final _addressController = TextEditingController();

  String? gender = "Male";
  final _dropdownController = DropdownEditingController(value: 'Kathmandu');

  var cities = [
    "Kathmandu",
    "Pokhara",
    "Chitwan",
    "Bhaktapur",
  ];

  List<Student>? lstStudents = [];

  void _addStudentToList(Student student) {
    lstStudents!.add(student);
  }

  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
        centerTitle: true,
      ),
      body: Form(
        key: formGlobalKey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _fnameController,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    hintText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter first name';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _lnameController,
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    hintText: 'Last Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter last name';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _ageController,
                  decoration: const InputDecoration(
                    labelText: 'Age',
                    hintText: 'Age',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter age';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Select gender',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Male'),
                  leading: Radio<String>(
                    value: 'Male',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Female'),
                  leading: Radio<String>(
                    value: 'Female',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Others'),
                  leading: Radio<String>(
                    value: 'Others',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: TextFormField(
                    maxLines: 10,
                    controller: _addressController,
                    decoration: const InputDecoration(
                      labelText: 'Address',
                      hintText: 'Address',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
               
                const SizedBox(
                  height: 8,
                ),
                TextDropdownFormField(
                  controller: _dropdownController,
                  options: cities,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      labelText: "Select your city"),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: const Text('Save Student'),
                      onPressed: () {
                        if (formGlobalKey.currentState!.validate()) {
                          Student student = Student(
                            fname: _fnameController.text,
                            lname: _lnameController.text,
                            age: int.parse(_ageController.text),
                            address: _addressController.text,
                            gender: gender,
                            city: _dropdownController.value,
                          );

                          _addStudentToList(student);
                          debugPrint(lstStudents!.length.toString());
                        }
                      }),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Display Student'),
                    onPressed: () {
                      // Pass data from one screen to another screen
                      Navigator.pushNamed(context, '/displayStudent',
                          arguments: lstStudents);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
