import 'package:flutter/material.dart';

class FlexibleScreen extends StatefulWidget {
  const FlexibleScreen({super.key});

  @override
  State<FlexibleScreen> createState() => _FlexibleScreenState();
}

class _FlexibleScreenState extends State<FlexibleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text('Flexbile Screen',
      //   style: TextStyle(fontSize: 15,
      //   ),
      //   ),
      // ),
    //screenchildscrollview
      body: Column(
        children: [
          Expanded(
            
            child: Container(
              height: 400,
              color: const Color.fromARGB(255, 93, 84, 3),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 200,
              color: const Color.fromARGB(255, 242, 65, 0),
            ),
          ),
        ],
      ),
    );
  }
}