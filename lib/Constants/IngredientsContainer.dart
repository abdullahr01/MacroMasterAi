
import 'package:flutter/material.dart';

class IngredientsContainer extends StatelessWidget {
  final Color containerColor;
  final String imagePath;

  const IngredientsContainer(
      {super.key, required this.containerColor, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(5)),
      child: Image.asset(
        imagePath,
        // fit: BoxFit.cover,
      ),
    );
  }
}