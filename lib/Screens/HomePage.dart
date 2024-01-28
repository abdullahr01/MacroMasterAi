import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:macromasterai/Constants/Constants.dart';
import 'package:macromasterai/Constants/FoodCard.dart';
import 'package:macromasterai/Screens/ChatBot.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  void signoutTheUser() async {
    await FirebaseAuth.instance.signOut();
  }

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
                        signoutTheUser();
                      },
                    ),
                  ),
                  const PoppinsTextStyle(
                      text: 'Home',
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
                        Icons.sentiment_neutral_rounded,
                        color: Colors.red,
                        size: 22,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ChatBot()));
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
              SizedBox(
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
                                  const EdgeInsets.only(top: 14, right: 30),
                              child: Column(
                                children: [
                                  const PoppinsTextStyle(
                                      text: 'Healthy Foods for you',
                                      textSize: 15,
                                      textColor: Colors.black,
                                      isBold: true),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 5, left: 12),
                                    child: Text(
                                      "Etiam in ex nec lobortis food luctus. Etiam iaculis healthy.",
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Poppins'),
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
                                          child: PoppinsTextStyle(
                                              text: 'See all food',
                                              textSize: 14,
                                              textColor: Colors.white,
                                              isBold: true),
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
                        child: SizedBox(
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
                child: PoppinsTextStyle(
                    text: 'New Food',
                    textSize: 18,
                    textColor: Colors.black,
                    isBold: true),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
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
                child: PoppinsTextStyle(
                    text: 'Popular Food',
                    textSize: 18,
                    textColor: Colors.black,
                    isBold: true),
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
                  title: const PoppinsTextStyle(
                      text: 'Seasonal Salad',
                      textSize: 14,
                      textColor: Colors.black,
                      isBold: true),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PoppinsTextStyle(
                          text: 'Nunc fringilla, nibh ac malesu.',
                          textSize: 13,
                          textColor: Colors.grey,
                          isBold: false),
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
                            PoppinsTextStyle(
                                text: '130 kcal',
                                textSize: 12,
                                textColor: Colors.grey,
                                isBold: false),
                            SizedBox(
                              width: 65,
                            ),
                            PoppinsTextStyle(
                                text: '\$14.50',
                                textSize: 12,
                                textColor: Colors.grey,
                                isBold: false),
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
