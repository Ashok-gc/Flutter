import 'package:flutter/material.dart';

class arithoutput extends StatefulWidget {
  const arithoutput({super.key});

  @override
  State<arithoutput> createState() => _arithoutputState();
}

class _arithoutputState extends State<arithoutput> {
  @override
  Widget build(BuildContext context) {
    final value = ModalRoute.of(context)!.settings.arguments
    as int?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output'),
      ),
      body: Center(
        child: Text(
          'Result: $value',
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
    
    // return Container();
  }
}