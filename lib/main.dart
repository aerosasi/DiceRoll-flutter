import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=3;
  int rightDiceNumber=2;

  void changeDie(){
    setState(() {

      Random random = new Random();
      int randomNumber = random.nextInt(6)+1;
      leftDiceNumber=randomNumber;
      Random random2 = new Random();
      int randomNumber2 = random2.nextInt(6)+1;
      rightDiceNumber=randomNumber2;

    });
  }

  @override
  Widget build(BuildContext context) {



    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeDie();
                  },
                child: Image.asset('images/dice$leftDiceNumber.png',color: Colors.black,)),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDie();
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}


