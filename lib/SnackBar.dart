import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:motion_toast/motion_toast.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  _showSnackbar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hello World'),
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(label: 'OK', onPressed: (){},textColor: const Color.fromARGB(255, 5, 177, 120)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: const Text('Flexbile Screen',
        style: TextStyle(fontSize: 15,
        ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){_showSnackbar();}, child: const Text('Button 1')),
            ElevatedButton(
              onPressed: (){
                Fluttertoast.showToast(
                  msg: "Hello from FLutter Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  );
                }, 
                child: const Text('Button 2')
                ),
            ElevatedButton(onPressed: (){
              MotionToast.success(description: const Text('Example of Sucess'),
              animationDuration: const Duration(seconds: 3),
              ).show(context);
            }, child: const Text('Show Sucess')),
            ElevatedButton(onPressed: (){
              MotionToast.error(description: const Text('Example of Error'),
              animationDuration: const Duration(seconds: 3),
              ).show(context);
            }, child: const Text('Show Error')),
            ElevatedButton(onPressed: (){
              MotionToast.info(description: const Text('Example of Info'),
              animationDuration: const Duration(seconds: 3),
              ).show(context);
            }, child: const Text('Show Info')),
            ElevatedButton(onPressed: (){
              MotionToast.warning(description: const Text('Example of Warning'),
              animationDuration: const Duration(seconds: 3),
              ).show(context);
            }, child: const Text('Show Warning')),
            ElevatedButton(onPressed: (){
              MotionToast.success(description: const Text('Example of Sucess'),
              animationDuration: const Duration(seconds: 3),
              ).show(context);
            }, child: const Text('Show Sucess')),


          ],
        ),
      ),
      // body: const Center(

      // ),
    );

  }
}