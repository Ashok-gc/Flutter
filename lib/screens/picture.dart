import 'package:flutter/material.dart';

class ImageContainerScreen extends StatefulWidget {
  const ImageContainerScreen({super.key});

  @override
  State<ImageContainerScreen> createState() => _ImageContainerScreenState();
}

class _ImageContainerScreenState extends State<ImageContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Container"),
      ),
      backgroundColor: Colors.amber,
      body: Stack(
        
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.blueAccent,
            child: Image.asset('assets/images/thor.png'),
          ),
          const Positioned(
            top: 1,
            right: 8,
            child:(
              Icon(Icons.edit)
            ),
          ),
          const Positioned(
            bottom: 1,
            left: 8,
            child:(
              Icon(Icons.thumb_up)
            ),
          ),
          const Positioned(
            bottom: 1,
            left: 40,
            child:(
              Icon(Icons.comment)
            ),
          ),
          
        ],
      ),
    );
  }
}