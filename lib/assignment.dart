import 'package:flutter/material.dart';


class StudenScreen extends StatefulWidget {
  const StudenScreen({super.key});

  @override
  State<StudenScreen> createState() => _StudenScreenState();
}

class _StudenScreenState extends State<StudenScreen> {
  void _display() {
    Navigator.pushNamed(context, '/displayStudent');
  }
  final _NameController = TextEditingController();
  final _LastNameController = TextEditingController();
  final _AgeController = TextEditingController();
  final _AddressController = TextEditingController();

  String? _val = 'male';

  String? dropdownvalue = 'Kathmandu';

  var items = ['Kathmandu', 'Bhaktapur', 'Lalitpur'];
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    backgroundColor: const Color.fromARGB(246, 253, 253, 253),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Student Details',
        style: TextStyle(fontSize: 15,
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            children: [
              TextFormField(
                validator: (value){
                  if (value == null || value.isEmpty){
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: _NameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'First Name'),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: _LastNameController,
          
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Last Name'),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: _AgeController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Age'),
              ),
              const SizedBox(
                height: 5,
              ),
          
              const Text(
                'Select Gender',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              RadioListTile(
                title: const Text("Male"),
                value: 'Male',
                groupValue: _val,
                onChanged: (val) {
                  setState(() {
                    _val = val;
                  });
                },
              ),
              RadioListTile(
                title: const Text("Female"),
                value: 'Female',
                groupValue: _val,
                onChanged: (val) {
                  setState(() {
                    _val = val;
                  });
                },
              ),
              TextFormField(
                controller: _AddressController,
                maxLines: 2,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Address'),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: double.infinity,
                child: DropdownButton(
                  isExpanded: true,
                  value: dropdownvalue,
          
                  icon: const Icon(Icons.keyboard_arrow_down),
          
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Save Student'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      _display();
                    },
                    child: const Text('Display Student')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
