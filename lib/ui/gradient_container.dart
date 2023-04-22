import 'package:first_app/ui/dice_controller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endALignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;

  void rollDice() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endALignment),
      ),
      child: const Center(
        child: DiceController(),
      ),
    );
  }
}
