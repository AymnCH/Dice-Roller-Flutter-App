import 'package:flutter/material.dart';

import 'dice_roller.dart';

const startAlignement = Alignment.bottomCenter;
const endAlignement = Alignment.topCenter;

class GradientContainer extends StatefulWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  State<GradientContainer> createState() {
    return _GradientContainerState();
  }
}

class _GradientContainerState extends State<GradientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.cyan,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: startAlignement,
            end: endAlignement,
            colors: [widget.color1, widget.color2]),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
