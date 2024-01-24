import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: Padding(
        padding: const EdgeInsets.only(top: 35, right: 10, left: 10),
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
                    "Home",
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
                        Icons.menu,
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
              // Search bar
              Padding(
                padding: const EdgeInsets.only(
                    top: 12, bottom: 12, left: 8, right: 8),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 13),
                      hintText: 'Search',
                      hintStyle:
                      const TextStyle(fontSize: 20, color: Colors.grey),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: GestureDetector(
                            child: Container(
                              height: 45,
                              width: 47,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red),
                              child: const Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 26,
                              ),
                            )),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 198, 198, 198)),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(35),
                      )),
                  // Handle search functionality here
                  onChanged: (value) {
                    // Handle search text changes
                  },
                ),
              ),
              Container(
                height: 150,
                width: 340,
                child: Row(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              color: Color(0xfff2f2f2),
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsets.only(top: 14, right: 46),
                              child: Column(
                                children: [
                                  const Text(
                                    "Healthy Foods for you",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 5, left: 12),
                                    child: Text(
                                      "Etiam in ex nec lobortis food luctus. Etiam iaculis healthy.",
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 8, left: 10),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 40,
                                        width: 170,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(30),
                                            color: Colors.red),
                                        child: const Center(
                                          child: Text(
                                            "See all food",
                                            // textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ))),
                    Container(
                        height: 160,
                        width: 120,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Color(0xfff2f2f2),
                        ),
                        child: Container(
                          child: Image.asset(
                              'images/greek-salad-caesar-salad-pasta-salad-recipe-salad-b86a44511c6f08ab49a6a0817f278be2 1.png'),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 260),
                child: Text(
                  "New Food",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 225,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      List<String> imagePath = [
                        'images/Mask.png',
                        'images/Mask2.png',
                      ];
                      List<String> imageName = [
                        'Avocado toast',
                        'Vegetable mix',
                      ];
                      List<double> prices = [
                        18.00,
                        22.50,
                      ];
                      List<int> kcalories = [
                        140,
                        260,
                      ];
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: FoodCard(
                            imagePath: imagePath[index],
                            name: imageName[index],
                            price: prices[index],
                            kcal: kcalories[index]),
                      );
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 224),
                child: Text(
                  "Popular Foods",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ListTile(
                  tileColor: const Color(0xffffffff),
                  leading: Container(
                    height: 70,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image.asset('images/Mask3.png'),
                  ),
                  title: const Text(
                    "Seasonal Salad",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Nunc fringilla, nibh ac malesu.",
                        style: TextStyle(
                          color: Colors.grey,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 7),
                        child: Row(
                          children: [

                            Icon(
                              Icons.local_fire_department_outlined,
                              color: Colors.orange,
                            ),
                            Text(
                              "130 kcal",
                              style: TextStyle(
                                  color: Colors.grey
                              ),
                            ),
                            SizedBox(
                              width: 65,
                            ),
                            Text(
                              "\$14.50",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final double price;
  final int kcal;

  const FoodCard({
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
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 4),
            child: Row(
              children: [
                Text(
                  '\$ ${price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Icon(
                  Icons.local_fire_department_outlined,
                  color: Colors.orange,
                ),
                Text(
                  '$kcal kcal',
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
