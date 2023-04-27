import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.orange),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'My First App-Nanda 212890',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          body: Center(
              child: Column(
            children: <Widget>[
              Image.network(
                  'https://hips.hearstapps.com/hmg-prod/images/cat-quotes-1543599392.jpg?crop=1.00xw:0.759xh;0,0&resize=1200:*'),
              Container(
                padding: const EdgeInsets.all(30),
                child: const Text('This is a network image of a Cat'),
              ),
              Image.asset('assets/dog_image.jpg'),
              Container(
                padding: const EdgeInsets.all(30),
                child: const Text('This is an asset image of a Dog'),
              ),
            ],
          )),
        ));
  }
}
