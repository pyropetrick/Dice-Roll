import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceController extends StatefulWidget {
  const DiceController({super.key});

  @override
  State<DiceController> createState() => _DiceControllerState();
}

class _DiceControllerState extends State<DiceController> {
  int activeDice = 2;

  void rollDice() {
    setState(() {
      activeDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$activeDice.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll Dice"))
      ],
    );
  }
}
