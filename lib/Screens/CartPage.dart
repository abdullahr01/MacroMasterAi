import 'package:flutter/material.dart';

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
                  const Text(
                    "Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
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
                padding: EdgeInsets.only(right: 170),
                child: Text(
                  "Baked salmon & asparagus",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
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
                  Container(
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
                        Text(
                          "Calories",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "190 kcal",
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Protein",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "87 g",
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 60, bottom: 11),
                    child: Column(
                      children: [
                        Text(
                          "Fat",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "65 g",
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Carbs",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "84 g",
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
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
                child: Text(
                  "About Food",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Duis vestibulum risus nec sem auctor, sita amet fermentum odio mollis. Vivamus eleifend, food a non volutpat venenatis, neque elit viver healthy augue, in accumsan orci diam et augue. Nunc a sodales iaculis congue. Nullam vita food salmon laoreet, maximus sapien nec, sollicitudin dolor. Nunc interdum fermentum dolor nec an tempus. Nullam pellentesque odio id libero bibendum, id sagittis leo vulputate. Donec odio eros, healthy sollicitudin ut quam ut, suscipit aliquet neque.",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 270),
                child: Text(
                  "Ingredients",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
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
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.red
                ),
                child: const Center(
                  child: Text(
                    "Add to Basket",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );

  }
}

class IngredientsContainer extends StatelessWidget {
  final Color containerColor;
  final String imagePath;

  const IngredientsContainer(
      {required this.containerColor, required this.imagePath});

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
