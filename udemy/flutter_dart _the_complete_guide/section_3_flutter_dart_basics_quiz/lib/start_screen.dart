import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
          const Text(
            "Learn Flutter the Fun way",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 30,),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white,
                 shadowColor: Colors.cyanAccent  ),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
