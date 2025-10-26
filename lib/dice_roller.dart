import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
   DiceRoller({super.key});



  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>
{
  var currentDiceRoll = 1;
  void rollDice()
  {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;;
    });
  }

    @override
  Widget build(context){
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/pics/dice-$currentDiceRoll.png', width: 250),
          const SizedBox(height: 20),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28,),
              // padding: EdgeInsets.only(top: 100),
            ),
            child: const Text(
              'Roll Dice',
            ),
          ),
        ],
      );
    }
}