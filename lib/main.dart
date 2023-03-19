import 'package:flutter/material.dart';
import 'package:flutter_dice_roll_example/dice_roll_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roll',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //dark theme
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.red,
      ),
      home: const DiceRoll(),
    );
  }
}