import 'package:flutter/material.dart';


class ArithmeticScreen extends StatelessWidget {
  const ArithmeticScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add two numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter first no',
                
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter second no',
                
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Add'))
          ],
        ),
      ),
    );
  }
}
