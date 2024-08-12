import 'package:flutter/material.dart';
import 'my_custom_gradient.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          Color.fromARGB(255, 0, 255, 255), Color.fromARGB(255, 68, 175, 5)),
    ),
  ));
}
