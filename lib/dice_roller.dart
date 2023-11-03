import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRolle = 2;

  void rollDice() {
    
    setState(() {
      currentDiceRolle = randomizer.nextInt(6) + 1;
    
    
  });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/image/dice-$currentDiceRolle.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 30),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
