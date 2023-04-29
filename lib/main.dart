import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  List<Image> diceimages = [
    Image.asset('assets/dice1.png'),
    Image.asset('assets/dice2.png'),
    Image.asset('assets/dice3.png'),
    Image.asset('assets/dice4.png'),
    Image.asset('assets/dice5.png'),
    Image.asset('assets/dice6.png')
  ];
  Image diceimage1 = Image.asset('assets/dice1.png');
  Image diceimage2 = Image.asset('assets/dice2.png');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Las Vegas Dice',
        home: Scaffold(
          backgroundColor: Colors.lime[800],
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Center(
                  child: Column(
                children: <Widget>[
                  Image.asset('assets/diceeLogo.png'),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 80, 0, 120),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Image>[
                          diceimage1,
                          diceimage2,
                        ],
                      )),
                  ElevatedButton(
                      onPressed: () {
                        List<int> randomNum = RandomNumber();
                        setState(() {
                          diceimage1 = diceimages[randomNum[0]];
                          diceimage2 = diceimages[randomNum[1]];
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.all(newMethod),
                        child: const Text(
                          'Roll',
                          style: TextStyle(fontSize: 20, fontFamily: 'Lobster'),
                        ),
                      ))
                ],
              )),
            ),
          ),
        ));
  }

  double get newMethod => 10.0;
  // ignore: non_constant_identifier_names
  List<int> RandomNumber() {
    var random = Random();
    int num1 = random.nextInt(6);
    int num2 = random.nextInt(6);
    while (num1 == num2) {
      num2 = random.nextInt(6);
    }
    List<int> randomNum = [num1, num2];
    return randomNum;
  }
}
