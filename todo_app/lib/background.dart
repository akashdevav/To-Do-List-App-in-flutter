import 'package:flutter/material.dart';

class colorGradient extends StatelessWidget {
  colorGradient(this.color1, this.color2, {super.key});

  Color color1;
  Color color2;
  
  @override
  Widget build(BuildContext) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color1, color2
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
    );
  }
}