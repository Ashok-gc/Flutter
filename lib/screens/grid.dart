import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deisgn"),
        elevation: 0,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8), 
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 2,
        children: [
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.amber,
          //   child: const Text("1",
          //   style: TextStyle(fontSize: 50, color:Colors.black),),
          // ),
          for (int i=1; i<=10; i++)...{
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black12,
                ),
                child: Text('$i', style: const TextStyle(fontSize: 50)),),),
              
          }
        ],
      ),
    );
  }
}