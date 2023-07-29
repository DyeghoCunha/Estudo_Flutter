import 'package:flutter/material.dart';
import 'package:section_3_flutter_dart_basics_quiz/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.blue],
                  end: Alignment.topRight,
                  begin: Alignment.bottomLeft),
            ),
            child: const StartScreen()),
      ),
    ),
  );
}
