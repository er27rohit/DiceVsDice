import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          title: Text('Dice vs Dice'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: BattlePage(),
      ),
    ),
  );
}

class BattlePage extends StatefulWidget {
  @override
  _BattlePageState createState() => _BattlePageState();
}

class _BattlePageState extends State<BattlePage> {
  
  var topDiceNumber = 1;
  var bottomDiceNumber = 1;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                   topDiceNumber = Random().nextInt(6) + 1 ;
                  });
                },
                child: Image.asset('images/dice$topDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                   bottomDiceNumber = Random().nextInt(6) + 1 ;
                  });
                },
                child: Image.asset('images/dice$bottomDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

 