import 'package:flutter/material.dart';

Widget myCustomText(String msg) {
  return Text(
    msg,
    style: const TextStyle(
      fontSize: 20,
      shadows: [
        Shadow(color: Colors.black, offset: Offset(10, -8), blurRadius: 6)
      ],
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
      letterSpacing: 3,
    ),
  );
}
