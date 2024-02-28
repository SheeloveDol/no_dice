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

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  // The build method is called every time the state of our app changes. This allows us to change the UI of our app dynamically, and preview the changes in real time.
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        // Expanded is a widget that takes up as much space as it can from the main axis of its parent.
        Expanded(
          // Image.asset is the shorthand for Image(image: AssetImage('images/dice1.png'))
          child: TextButton(
            child: Image.asset('images/dice1.png'),
            onPressed: () {
              print('Left button got pressed.');
            },
          ),
        ),
        Expanded(
          child: TextButton(
            child: Image.asset('images/dice2.png'),
            onPressed: () {
              print('Right button got pressed.');
            },
          ),
        ),
      ]),
    );
  }
}
