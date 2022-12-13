
// import 'package:flutter/material.dart';
// import 'package:my_firstapp/screens/cardscreen.dart';
// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:CardScreen(),
//     ),
//   );
// }


import 'package:flutter/material.dart';
import 'package:my_firstapp/SnackBar.dart';
import 'package:my_firstapp/arithmetic.dart';
import 'package:my_firstapp/arithmetic_output.dart';
import 'package:my_firstapp/assignment.dart';
import 'package:my_firstapp/buttons.dart';
import 'package:my_firstapp/columnscreen.dart';
import 'package:my_firstapp/container.dart';
import 'package:my_firstapp/flexible.dart';
import 'package:my_firstapp/imagescreen.dart';
import 'package:my_firstapp/radiobutton.dart';
import 'package:my_firstapp/rowcolumn.dart';
import 'package:my_firstapp/screens/calculator.dart';
import 'package:my_firstapp/screens/cardscreen.dart';
import 'package:my_firstapp/screens/displayStudent.dart';
import 'package:my_firstapp/screens/grid.dart';
 import 'package:my_firstapp/screens/student_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/calculatorScreen',
      routes: {
        '/':(context) => const StudentDetailsScreen(),
        '/snackBar':(context) => const SnackBarScreen(),
        '/arithmeticScreen':(context) => const ArithmeticScreen(),
        '/arithoutput':(context) => const arithoutput(),
        '/studenScreen':(context) => const StudenScreen(),
        '/buttons':(context) => const buttons(),
        '/columnScreen':(context) => const ColumnScreen(),
        '/container':(context) => const ContainerScreen(),
        '/image':(context) => const ImageScreen(),
        '/flexibleScreen':(context) => const FlexibleScreen(),
        '/radioButton':(context) => const radiobutton(),
        '/rowColumn':(context) => const ImageScreen(),
        '/rowColumnScreen':(context) => const RowColumnScreen(),
        '/studentScreen':(context) => const StudentDetailsScreen(),
        '/displayStudent':(context) => const DisplayStudentScreen(),
        '/cardScreen':(context) => const CardScreen(),
        '/gridScreen':(context) => const GridScreen(),
        '/calculatorScreen':(context) => const CalculatorScreen(),
      },
    )
  );
  
}