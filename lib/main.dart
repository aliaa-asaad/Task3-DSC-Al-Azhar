import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home:Scaffold(
backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("GFG|Dice",textAlign: TextAlign.center,),
          backgroundColor: Colors.green,
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
  var diceNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child:FlatButton(
            onPressed: (){
              setState(() {
                diceNumber=Random().nextInt(6)+1;
              });
            },
            child: Image.asset('images/dice$diceNumber.PNG'),
          )

          ),
        ],
      ),
    );
  }
}


