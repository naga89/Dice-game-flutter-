import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: const Text('created by Naga',
          textAlign: TextAlign.end,),
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dice',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: const DicePage(),
        backgroundColor: Colors.white70,
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int value1 = 1;
  int value2 = 2;

  void changeValue(){
    setState(() {
      value1=Random().nextInt(6)+1;
      value2=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  changeValue();
                },
                child: Image.asset('images/dice$value1.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed:(){
                    changeValue();
                  },
                  child: Image.asset('images/dice$value2.png')),
            ),
          )
        ],
      ),
    );
  }
}



