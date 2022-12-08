import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

// class _ImageScreenState extends State<ImageScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 7, 126, 137),
//       body: SafeArea(
//         child: Center(
//           child: Container(
//               height: 400,
//               width: 400,
//               decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//               ),
//               child:const CircleAvatar(backgroundImage: AssetImage("assets/images/mannn.jpg"),),
//             ),
//         ),
//         ),
//       );
    
//   }
// }
class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 126, 137),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: const BoxDecoration(shape: BoxShape.circle),
            height: 400,
            width: 400,
            clipBehavior: Clip.antiAlias,
            // child: Image.network(
            //     "https://th.bing.com/th/id/OIP.0yrNccEir3cXGyo0sDSIOQHaD5?pid=ImgDet&rs=1",
            //     fit: BoxFit.cover),
            child: Image.asset('assets/images/mannn.jpg'),
          ),
        ),
      ),
    );
  }
}

