import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            alignment: Alignment.topLeft,
            color: Colors.amber,
            height: 400,
            width: 400,
            child: const Text("Hi"),
          ),
          Positioned(
            top: 1,
            right: 1,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.white,
              child: const Text("Hello"),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 1,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),           
          ),
          Positioned(
            bottom: -50,
            right: 150,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          )

        ],
      ),
    );
  }
}