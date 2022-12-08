import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArithmeticScreen(),
    ),
  );
}

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});
  

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final _firstController = TextEditingController();
  final _secondController = TextEditingController();
  int result = 0;
  final _key =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add two numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                controller: _firstController,
                keyboardType: TextInputType.number,

                // onChanged: (value) => {first = int.parse(value)},
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter first no',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return 'Please enter first number';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: _secondController,
                keyboardType: TextInputType.number,
                // onChanged: (value) => {second = int.parse(value)},
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter second no',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return 'Please enter second number';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_key.currentState!.validate()){
                      setState(() {
                        result=int.parse(_firstController.text)+int.parse(_secondController.text);
                      });
                    }
                    setState(() {
                      // result = first + second;
                    });
                  },
                  child: const Text('Add'),
                ),
              ),
              Text(
                'Sum is : $result',
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
