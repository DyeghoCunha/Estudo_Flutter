import 'package:flutter/material.dart';

class ListViewH extends StatelessWidget {
  const ListViewH({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/fundo3.png"), fit: BoxFit.cover),
        ),
        child: ListView(
          
        ));
  }
}
