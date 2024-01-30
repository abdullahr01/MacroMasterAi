import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:macromasterai/Constants/Constants.dart';
import 'package:macromasterai/Constants/ListImages.dart';
import 'package:macromasterai/Constants/utils/dimensions.dart';
import 'package:macromasterai/Screens/CalculateOrScd.dart';
import 'package:macromasterai/Screens/UserProfileDetails.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<Color> gradientColor = [
    const Color(0xffFF0000),
    const Color(0xffffffff)
  ];

  @override
  Widget build(BuildContext context) {
    initMediaQuerySize(context);
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: Padding(
        padding: EdgeInsets.only(top: widgetHeight(48), right: widgetWidth(15), left: widgetHeight(15)),
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
                      text: 'Profile',
                      textSize: 18,
                      textColor: Colors.black,
                      isBold: true),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const UserInfoDetails()));
                    },
                    child: Hero(
                      tag: 'avatarHero',
                      child: Container(
                          height: 40,
                          width: 40,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60)),
                          child:
                              Image.asset('images/avatar-removebg-preview.png')),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: widgetHeight(40),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Schedule()));
                },
                child: Container(
                  height: widgetHeight(264),
                  width: widgetWidth(386),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: widgetWidth(23), left: widgetWidth(23)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const PoppinsTextStyle(
                                text: 'Weight',
                                textSize: 17,
                                textColor: Colors.black,
                                isBold: true),
                            Padding(
                              padding: EdgeInsets.only(top: widgetHeight(20)),
                              child: Container(
                                height: widgetHeight(45),
                                width: widgetWidth(90),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.red),
                                child: const Center(
                                  child: PoppinsTextStyle(
                                      text: '-7.5 kg',
                                      textSize: 16,
                                      textColor: Colors.white,
                                      isBold: true),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: widgetHeight(380)),
                        child: const PoppinsTextStyle(
                            text: '54 kg',
                            textSize: 22,
                            textColor: Colors.grey,
                            isBold: false),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: widgetWidth(10)),
                        child: Container(
                          height: widgetHeight(140),
                          width: widgetWidth(450),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: LineChart(LineChartData(
                              minX: 0,
                              maxX: 10,
                              minY: 0,
                              maxY: 4,
                              titlesData: const FlTitlesData(show: false),
                              gridData: const FlGridData(show: false),
                              borderData: FlBorderData(show: false),
                              lineBarsData: [
                                LineChartBarData(
                                    spots: [
                                      const FlSpot(0, 4),
                                      const FlSpot(1.3, 2.3),
                                      const FlSpot(3, 3.5),
                                      const FlSpot(4, 2.7),
                                      const FlSpot(5, 2.9),
                                      const FlSpot(5.4, 2.7),
                                      const FlSpot(6, 3.5),
                                      const FlSpot(6.3, 2.7),
                                      const FlSpot(6.5, 2.5),
                                      const FlSpot(6.8, 2),
                                      const FlSpot(7, 2.5),
                                      const FlSpot(7.3, 1),
                                      const FlSpot(7.4, 2.5),
                                      const FlSpot(7.6, 1.5),
                                      const FlSpot(8, 1.7),
                                      const FlSpot(9, 1),
                                      const FlSpot(9.4, 1.5),
                                      const FlSpot(9.7, 1.2)
                                    ],
                                    isCurved: true,
                                    color: Colors.red,
                                    barWidth: 4,
                                    dotData: const FlDotData(show: false),
                                    belowBarData: BarAreaData(
                                        show: true,
                                        gradient: LinearGradient(
                                            colors: gradientColor
                                                .map((color) =>
                                                    color.withOpacity(0.3))
                                                .toList())))
                              ])),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: widgetHeight(16),
              ),
              Swiper(
                itemHeight: widgetHeight(284),
                itemWidth: widgetWidth(400),
                loop: true,
                duration: 120,
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  List<Color> cardColors = [
                    const Color(0xffE2F4F0),
                    const Color(0xffffd69a)
                  ];
                  List<String> yogaPersons = [
                    'images/5bbf33e32da1b-f828ffbc65b767e5d2fef4433b9c318f 1.png',
                    'images/person3-removebg-preview.png'
                  ];
                  List<String> exercises = [
                    'Breathing exercise',
                    'Physical exercise'
                  ];
                  return MyCard(
                    color: cardColors[index],
                    yogaImage: yogaPersons[index],
                    text: exercises[index],
                  );
                },
                layout: SwiperLayout.STACK,
                viewportFraction: 0.8,
                scale: 0.9,
              ),
              Padding(
                padding: EdgeInsets.only(right: widgetWidth(200), top: widgetHeight(44)),
                child: const PoppinsTextStyle(
                    text: 'Payment Methods',
                    textSize: 17,
                    textColor: Colors.black,
                    isBold: true),
              ),
              SizedBox(height: widgetHeight(19)),
              Swiper(
                itemHeight: widgetHeight(300),
                itemWidth: widgetWidth(450),
                loop: true,
                duration: 120,
                scrollDirection: Axis.vertical,
                // itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: widgetWidth(450),
                    height: widgetHeight(400),
                    decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(imagePath[index])),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                },
                itemCount: imagePath.length,
                layout: SwiperLayout.STACK,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Color color;
  final String yogaImage;
  final String text;

  MyCard({required this.color, required this.yogaImage, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: widgetHeight(284),
        width: widgetWidth(386),
        // color: const Color(0xffE2F4F0),
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: widgetWidth(54), top: widgetHeight(30)),
                  child: const PoppinsTextStyle(
                      text: 'Next Workout',
                      textSize: 15,
                      textColor: Colors.black,
                      isBold: true),
                ),
                SizedBox(
                  height: widgetHeight(8),
                ),
                Padding(
                  padding: EdgeInsets.only(left: widgetWidth(12)),
                  child: PoppinsTextStyle(
                      text: text,
                      textSize: 19,
                      textColor: Colors.grey,
                      isBold: true),
                ),
                SizedBox(
                  height: widgetHeight(30),
                ),
                Padding(
                  padding: EdgeInsets.only(right: widgetWidth(75)),
                  child: Container(
                    height: widgetHeight(40),
                    width: widgetWidth(90),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.red),
                    child: const Center(
                      child: PoppinsTextStyle(
                          text: '30 min',
                          textSize: 15,
                          textColor: Colors.white,
                          isBold: true),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SizedBox(
                height: widgetHeight(200),
                width: widgetWidth(100),
                child: Image.asset(
                  yogaImage,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
