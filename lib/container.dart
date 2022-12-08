import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 136, 143),
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          child: Container(
            // color: Colors.amberAccent,
            height: 300,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 5, 90, 94),
              border: Border.all(
                color: Colors.black,
                width: 2,
              )
            ),
            child: const Text('I am a container'),
          ),
        )
        ),
      );
    
  }
}