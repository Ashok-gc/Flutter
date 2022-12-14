import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  var userInput = '';
  var answer = '';
  // Array of button
  final List<String> buttons = [
    'C',
    '*',
    '/',
    'DEL',
    '1',
    '2',
    '3',
    '+',
    '4',
    '5',
    '6',
    '-',
    '7',
    '8',
    '9',
    'x',
    '%',
    '0',
    '.',
    '=',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 89, 117),
        title: const Text("Calculator"),
      ),
      backgroundColor: const Color.fromARGB(225, 7, 168, 212),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(18),
                    // color: const Color.fromARGB(255, 7, 89, 117),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userInput,
                      style: const TextStyle(
                          fontSize: 28, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    
                  ),
                  Container(
                    padding: const EdgeInsets.all(18),
                    color: const Color.fromARGB(255, 7, 89, 117),
                    
                    alignment: Alignment.centerRight,
                    child: Text(
                      answer,
                      style: const TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    //Buttons Functions
                    // Clear Button
                    if (index == 0) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput = '';
                            answer = '0';
                          });
                        },
                        buttonText: buttons[index],
                        color: const Color.fromARGB(255, 174, 23, 12),
                        textColor: Colors.black,
                      );
                    }

                    // Delete Button
                    else if (index == 3) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          });
                        },
                        buttonText: buttons[index],
                        color: const Color.fromARGB(245, 214, 43, 31),
                        textColor: Colors.black,
                      );
                    }

                    // % Button
                    else if (index == 16) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: const Color.fromARGB(255, 3, 71, 86),
                        textColor: Colors.black,
                      );
                    }
                    // = Button
                    else if (index == 1) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                        buttonText: buttons[index],
                        color: const Color.fromARGB(255, 3, 71, 86),
                        textColor: Colors.white,
                      );
                    }
                    // = Button
                    else if (index == 19) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                        buttonText: buttons[index],
                        color: const Color.fromARGB(255, 164, 75, 6),
                        textColor: Colors.white,
                      );
                    }

                    //  other buttons
                    else {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: isOperator(buttons[index])
                            ? const Color.fromARGB(255, 3, 71, 86)
                            : const Color.fromARGB(255, 7, 89, 117),
                        textColor: isOperator(buttons[index])
                            ? const Color.fromARGB(255, 255, 255, 255)
                            : Colors.black,
                      );
                    }
                  }),
            ),
          ),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

// function to calculate the input operation
  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
