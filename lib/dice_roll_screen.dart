import 'dart:math';

import 'package:flutter/material.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
class DiceRoll extends StatefulWidget {

  const DiceRoll({Key? key}) : super(key: key);

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int leftDiceNumber = 1;

  int rightDiceNumber = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Roll Example'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(
           children: [

             const Padding(
               padding: EdgeInsets.symmetric(
                  vertical: 20,
               ),
               child: Text('Roll the dice!',style: TextStyle(
                 fontSize: 40,
                 fontWeight: FontWeight.bold,
                 color: Colors.red,
               ),),
             ),

             Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
               child: Row(
                 children: [
                    ImageWidget(value: leftDiceNumber),
                    ImageWidget(value: rightDiceNumber),
                 ],
               ),
             ),
           ],
         ),
          //size of the button
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
          ),
            child: BouncingWidget(
              onPressed: onRoll,
              scaleFactor: 2,
              duration: const Duration(milliseconds: 100),
              child: Container(
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Roll',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                ),
              )
            ),
          ),

        ],
      )
    );
  }

  void onRoll(){
    Random random = Random();
    leftDiceNumber = random.nextInt(6) + 1;
    rightDiceNumber = random.nextInt(6) + 1;
    setState(() {
    });


  }
}
class ImageWidget extends StatelessWidget {
  final int value;
  const ImageWidget({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset('images/dice_$value.png'),
      ),
    );
  }
}
