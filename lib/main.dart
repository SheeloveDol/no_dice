import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            'No Dice!',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const DicePage(),
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
  // Here we define the initial state of the dice. On the first run, the left dice will be 3.
  int leftDiceNumber = 3;
  int rightDiceNumber = 6;

  // This method returns a random number between 1 and 6. We use it to change the state of the left dice.
  int getRandomNumberForDice() {
    final random = Random();
    return random.nextInt(6) + 1;
  }

  @override
  // The build method is called every time the state of our app changes. This allows us to change the UI of our app dynamically, and preview the changes in real time.
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        // Expanded is a widget that takes up as much space as it can from the main axis of its parent.
        Expanded(
          // Image.asset is the shorthand for Image(image: AssetImage('images/dice1.png'))
          child: TextButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: () {
              // Here we change the state of the left dice to a random number between 1 and 6.
              // setState is a method that tells Flutter to rerun the build method with the updated state.
              setState(() {
                leftDiceNumber = getRandomNumberForDice();
                rightDiceNumber = getRandomNumberForDice();
              });
            },
          ),
        ),
        Expanded(
          child: TextButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: () {
              setState(
                () {
                  rightDiceNumber = getRandomNumberForDice();
                  leftDiceNumber = getRandomNumberForDice();
                },
              );
            },
          ),
        ),
      ]),
    );
  }
}
