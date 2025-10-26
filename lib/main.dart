import 'package:flutter/material.dart';
import 'package:dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 165, 61, 61),
          Color.fromARGB(255, 137, 137, 239),
        ),
      ),
    ),
  );
}
