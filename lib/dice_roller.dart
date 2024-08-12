import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'images/dice-1.png';

  final random = Random();
  void rollDice() {
    var diceRoll = random.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 100),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.white, overlayColor: Colors.black),
          onPressed: rollDice,
          child: const Text(
            "Roll Dice!",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }
}
