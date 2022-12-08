import 'package:flutter/material.dart';

class radiobutton extends StatefulWidget {
  const radiobutton({super.key});

  @override
  State<radiobutton> createState() => _radiobuttonState();
}

class _radiobuttonState extends State<radiobutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button"),
        backgroundColor: const Color.fromARGB(255, 8, 182, 150),
      ),
      body:  ListTile(
        
        leading: const Icon(Icons.woman),
        title: const Text('Kishan Aashutosh '),
        subtitle: const Text('Anup, Nepal'),
        trailing: Wrap(
          spacing: 8,
          children: [
            IconButton(onPressed:(){} , icon: const Icon(Icons.edit)),
             IconButton(onPressed:(){} , icon: const Icon(Icons.delete))
            
            
          ],
        ),
        
      ),
    );
  }
}
