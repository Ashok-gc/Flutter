import 'package:flutter/material.dart';

class buttons extends StatefulWidget {
  const buttons({super.key});

  @override
  State<buttons> createState() => _buttonsState();
}

class _buttonsState extends State<buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column"),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.amberAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text("Button 1")),
            ElevatedButton(onPressed: (){}, child: const Text("Button 2")),
            ElevatedButton(onPressed: (){}, child: const Text("Button 3")),
          ],
        ),
      ),
    );
  }
}