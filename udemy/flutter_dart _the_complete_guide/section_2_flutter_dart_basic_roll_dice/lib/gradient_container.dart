import 'package:flutter/material.dart';
import 'package:section_2_flutter_dart_basic_roll_dice/styles_text.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{

  const GradientContainer({required this.gradientColors,super.key});

  final List<Color> gradientColors;

  @override
  Widget build(context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child:StyledText(text: "Cutucando")
      ),
    );
  }
}



