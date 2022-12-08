import 'package:flutter/material.dart';

class RowColumnScreen extends StatefulWidget {
  const RowColumnScreen({super.key});

  @override
  State<RowColumnScreen> createState() => _RowColumnScreenState();
}

class _RowColumnScreenState extends State<RowColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Row and Column',
            style: TextStyle(fontSize: 15),
          ),
        ),
        body: Center(
          child: Container(
              child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        // flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.red,
                          ), //BoxDecoration
                        ), //Container
                      ), //Flexible
                      Flexible(
                        // flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 6, 123, 182),
                        ) //BoxDecoration
                            ), //Container
                      ),
                      Flexible(
                        // flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                            decoration: const BoxDecoration(
                          color: Colors.red,
                        ) //BoxDecoration
                            ), //Container
                      ) //Flexible
                    ],
                  ), //Row
                ), //Flexible
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Colors.blue), //BoxDecoration
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 6, 155, 143)), //BoxDecoration
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 189, 189, 7)), //BoxDecoration
                  ),
                ), //Flexible
              ],
            ), //Column
          ) //Padding
              ), //Container
        ) //Container
        );
    //MaterialApp
  }
}
