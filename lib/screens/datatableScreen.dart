import 'package:flutter/material.dart';
import 'package:my_firstapp/model/student.dart';

class DataTableScreen extends StatefulWidget {
  const DataTableScreen({super.key});

  @override
  State<DataTableScreen> createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableScreen> {
  List<Student> lstStudent = [
    Student(fname: 'Ashok', age: 11),
    Student(fname: 'Kishan', age: 11),
    Student(fname: 'Aashutosh', age: 11),
  ];
  _showAlertDialoge(BuildContext context, Student student) {
    AlertDialog alert = AlertDialog(
      title: const Text("Delete?"),
      content: Text("Are you sure want to delete ${student.fname}??"),
      actions: [
        TextButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          child: const Text("No"),
        ),
        TextButton(
          onPressed: (() {
            setState(() {
              lstStudent.remove(student);
            });
            Navigator.pop(context);
          }),
          child: const Text("Yes"),
        )
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Table Screen'),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: DataTable(
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Colors.cyan),
          border: TableBorder.all(color: Colors.black),
          columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
            DataColumn(label: Text('Edit'))
          ],
          rows: lstStudent
              .map(
                (student) => DataRow(cells: [
                  DataCell(Text(student.fname!)),
                  DataCell(Text(student.age.toString())),
                  // DataCell(Wrap(
                  //     children: const [Icon(Icons.edit), Icon(Icons.delete)]))
                  DataCell(
                    Wrap(
                      children: [
                        IconButton(
                          onPressed: () {
                            _showAlertDialoge(context, student);
                            // setState(() {
                            //   lstStudent.remove(student);
                            // });
                          },
                          icon: const Icon(Icons.delete)
                          
                        ),
                        IconButton(
                          onPressed: () {
                            
                            setState(() {
                            });
                          },
                          icon: const Icon(Icons.edit)
                          
                        ),
                      ],
                    ),
                    
                  )
                ]),
              )
              .toList(),
        ),
      ),
    );
  }
}
