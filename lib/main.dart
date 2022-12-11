
import 'package:flutter/material.dart';
import 'package:my_firstapp/screens/student_screen.dart';
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:StudentDetailsScreen(),
      title: 'FLutter and Dart',
      initialRoute: '/',
      routes: {
        '/':(context) => const StudentDetailsScreen(),
      },
    ),
  );
}