import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String ImagePath;
  const SquareTile({super.key, 
    required this.ImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey.shade200
            ),
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[100]
        ),
        child: Image.asset(
          ImagePath,
          height: 40,
        )
    );
  }
}