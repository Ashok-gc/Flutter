// import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import '../model/student.dart';

// class DisplayStudentDetailsScreen extends StatefulWidget {
//   // const DisplayStudentDetailsScreen({super.key});
//   List<Student> lstStudent =[];

//   @override
//   void didChangeDependencies() {
//     lstStudent=ModalRoute.of(context)!.settings.arguments as List<Student>;
//     super.didChangeDependencies();
    
//   }
// }

// class _DisplayStudentDetailsScreenState extends State<DisplayStudentDetailsScreen> {
//   @override
//   Widget build(BuildContext context) {
//       var lstStudent;
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('Student Details'),
//           elevation: 0,
//         ),
//         body: lstStudent.isNotEmpty
//             ? ListView.builder(
//               itemCount: lstStudent.length,
//               itemBuilder: (BuildContext context, int index){
//                 return ListTile(
//                   title: Text(lstStudent[index].fname! +
//                   ' ' +
//                   lstStudent[index].lname!),
//                 subtitle: Text(lstStudent[index].address!),
//                 trailing: Wrap(
//                   children: [
//                     IconButton(onPressed: (){}, icon: const)
//                   ],
//                 ),
//                 )
//               },

//             )
//       );
//   }
// }