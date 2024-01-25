import 'package:flutter/material.dart';
import 'package:macromasterai/Constants/Constants.dart';

class FoodCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final double price;
  final int kcal;

  const FoodCard({super.key, 
    required this.imagePath,
    required this.name,
    required this.price,
    required this.kcal,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width: 220,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  height: 140,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(imagePath),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130, top: 20),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.orange,
                      size: 15,
                    ),
                    onPressed: () {
                      // Handle favorite icon tap
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 66),
            child: PoppinsTextStyle(
                text: name,
                textSize: 15,
                textColor: Colors.black,
                isBold: true),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 4),
            child: Row(
              children: [
                PoppinsTextStyle(
                    text: '\$ ${price.toStringAsFixed(2)}',
                    textSize: 17,
                    textColor: Colors.grey,
                    isBold: false),
                const SizedBox(
                  width: 30,
                ),
                const Icon(
                  Icons.local_fire_department_outlined,
                  color: Colors.orange,
                ),
                PoppinsTextStyle(
                    text: '$kcal kcal',
                    textSize: 17,
                    textColor: Colors.grey,
                    isBold: false),
              ],
            ),
          )
        ],
      ),
    );
  }
}
