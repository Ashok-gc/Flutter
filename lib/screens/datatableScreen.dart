import 'package:flutter/material.dart';

class DataTableScreen extends StatefulWidget {
  const DataTableScreen({super.key});

  @override
  State<DataTableScreen> createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Table Screen"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('ID'),),
            DataColumn(label: Text('Name'),),
            DataColumn(label: Text('LastName'),),
            DataColumn(label: Text('Age'),),
          ], 
          rows: const [
            DataRow(cells: [
              DataCell(Text("1")),
              DataCell(Text("Ashok")),
              DataCell(Text("GC")),
              DataCell(Text("16")),
            ]),
            DataRow(cells: [
              DataCell(Text("2")),
              DataCell(Text("Ashu")),
              DataCell(Text("KC")),
              DataCell(Text("16")),
            ]),
          ],
        ),
      ),
    );
  }
}