import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
           Text(
            "Learn Flutter the Fun way",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, shadowColor: Colors.cyanAccent),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
