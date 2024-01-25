import 'package:flutter/material.dart';
import 'package:macromasterai/Constants/Constants.dart';
import 'package:macromasterai/Constants/IngredientsContainer.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: Padding(
        padding: const EdgeInsets.only(top: 48, right: 8, left: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  const PoppinsTextStyle(
                      text: 'Details',
                      textSize: 20,
                      textColor: Colors.black,
                      isBold: true),
                  Container(
                    height: 40,
                    width: 40,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 175),
                child: PoppinsTextStyle(
                    text: 'Baked salmon & asparagus',
                    textSize: 13,
                    textColor: Colors.black,
                    isBold: true),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 242),
                child: Container(
                  child: Image.asset('images/Score.png'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    // color: Colors.grey,
                    height: 140,
                    width: 140,
                    child:
                        Image.asset('images/qq7prqha8j0f960b77ped3dd8g 1.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10, left: 15),
                    child: Column(
                      children: [
                        PoppinsTextStyle(
                            text: 'Calories',
                            textSize: 15,
                            textColor: Colors.black,
                            isBold: true),
                        SizedBox(
                          height: 5,
                        ),
                        PoppinsTextStyle(
                            text: '190 kcal',
                            textSize: 14,
                            textColor: Colors.black,
                            isBold: false),
                        SizedBox(
                          height: 25,
                        ),
                        PoppinsTextStyle(
                            text: 'Protein',
                            textSize: 15,
                            textColor: Colors.black,
                            isBold: true),
                        SizedBox(
                          height: 5,
                        ),
                        PoppinsTextStyle(
                            text: '87 g',
                            textSize: 14,
                            textColor: Colors.black,
                            isBold: false),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 60, bottom: 11),
                    child: Column(
                      children: [
                       PoppinsTextStyle(
                            text: 'Fat',
                            textSize: 15,
                            textColor: Colors.black,
                            isBold: true),
                        SizedBox(
                          height: 5,
                        ),
                        PoppinsTextStyle(
                            text: '65 g',
                            textSize: 14,
                            textColor: Colors.black,
                            isBold: false),
                        SizedBox(
                          height: 25,
                        ),
                        PoppinsTextStyle(
                            text: 'Carbs',
                            textSize: 15,
                            textColor: Colors.black,
                            isBold: true),
                        SizedBox(
                          height: 5,
                        ),
                        PoppinsTextStyle(
                            text: '84 g',
                            textSize: 14,
                            textColor: Colors.black,
                            isBold: false),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 270),
                child: PoppinsTextStyle(
                            text: 'About Food',
                            textSize: 16,
                            textColor: Colors.black,
                            isBold: true),
              ),
              const SizedBox(
                height: 10,
              ),
              const PoppinsTextStyle(
                text: "Duis vestibulum risus nec sem auctor, sita amet fermentum odio mollis. Vivamus eleifend, food a non volutpat venenatis, neque elit viver healthy augue, in accumsan orci diam et augue. Nunc a sodales iaculis congue. Nullam vita food salmon laoreet, maximus sapien nec, sollicitudin dolor. Nunc interdum fermentum dolor nec an tempus. Nullam pellentesque odio id libero bibendum, id sagittis leo vulputate. Donec odio eros, healthy sollicitudin ut quam ut, suscipit aliquet neque.",
                textColor: Colors.grey,
                textSize: 15,
                isBold: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 270),
                child: PoppinsTextStyle(
                            text: 'Ingredients',
                            textSize: 16,
                            textColor: Colors.black,
                            isBold: true),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      List<Color> colours = [
                        const Color(0xffe4f3f1),
                        const Color(0xffffebdb),
                        const Color(0xfff5f9fa),
                        const Color(0xffffffff)
                      ];
                      List<String> ingredientImagePath = [
                        'images/avocado-minimalism-pink-wallpaper-preview-removebg-preview.png',
                        'images/tomato-removebg-preview.png',
                        'images/carrot-removebg-preview.png',
                        'images/brocoli-removebg-preview.png'
                      ];
                      return Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: IngredientsContainer(
                            containerColor: colours[index],
                            imagePath: ingredientImagePath[index]),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: Colors.red),
                child: const Center(
                  child: PoppinsTextStyle(
                            text: 'Add to Basket',
                            textSize: 15,
                            textColor: Colors.white,
                            isBold: true),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

