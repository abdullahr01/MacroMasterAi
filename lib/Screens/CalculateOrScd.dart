import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  int selected = 0;

  Widget RadioButtonGroup(String text, int index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          selected = index;
        });
      },
      style: ButtonStyle(
        side: MaterialStateProperty.all(BorderSide.none),
        backgroundColor: (selected == index)
            ? MaterialStateProperty.all(Colors.white)
            : MaterialStateProperty.all(Colors.transparent),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
          (Set<MaterialState> states) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            );
          },
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: (selected == index) ? Colors.red : Colors.grey,
            fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 48),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
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
                  ),
                  const Text(
                    "Details",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      height: 40,
                      width: 40,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60)),
                      child: IconButton(
                        icon: const Icon(
                          Icons.share_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  "Vitamins & Minerals",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    height: 80,
                    width: 365,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, top: 10),
                      child: Row(
                        children: [
                          textInTheBox(
                            text: 'Vitamin D',
                            numbers: '86',
                          ),
                          Div(),
                          const SizedBox(
                            width: 8,
                          ),
                          textInTheBox(
                            text: 'Vitamin C',
                            numbers: '94',
                          ),
                          Div(),
                          const SizedBox(
                            width: 5,
                          ),
                          textInTheBox(
                            text: 'Vitamin E',
                            numbers: '43',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 1000,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: Container(
                            height: 60,
                            width: 360,
                            decoration: BoxDecoration(
                                color: const Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RadioButtonGroup('Vitamin', 1),
                                const SizedBox(
                                  width: 10,
                                ),
                                RadioButtonGroup('Nutrition', 2),
                                const SizedBox(
                                  width: 10,
                                ),
                                RadioButtonGroup('Minerals', 3),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Schedule",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "Today",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Flexible(
                          child: ListView.builder(
                              padding: EdgeInsets.only(left: 10),
                              scrollDirection: Axis.horizontal,
                              itemCount: 24,
                              itemBuilder: (BuildContext context, int index) {
                                int hour = 9 + index;
                                hour = hour % 24;
                                String formattedHour =
                                    hour < 10 ? '0$hour:00' : '$hour:00';

                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            formattedHour,
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          SizedBox(height: 6),
                                        ],
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: 25,
                                        right: 0,
                                        child: Container(
                                          height: 800,
                                          child: const DottedLine(
                                            direction: Axis.vertical,
                                            dashColor: Colors.grey,
                                            lineThickness: 1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 210, left: 38),
                      child: ScheduleContainerForShort(
                        imagePath: 'images/valsadpic.png',
                        text: 'Mango',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 300, left: 150),
                      child: ScheduleContainerForLong(
                        imagePath: 'images/sweetpotato.png',
                        text: 'Sweet potato',
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class ScheduleContainerForLong extends StatelessWidget {

  final String imagePath;
  final String text;

  ScheduleContainerForLong({
    required this.imagePath,
    required this.text
  });

  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffd6eae6)
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 4, left: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage(imagePath,),
              fit: BoxFit.cover,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.grey,
                  // fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}


class ScheduleContainerForShort extends StatelessWidget {

  final String imagePath;
  final String text;

  ScheduleContainerForShort({
   required this.imagePath,
   required this.text
});

  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffd6eae6)
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 23, left: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage(imagePath,),
              fit: BoxFit.cover,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.grey,
                  // fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class textInTheBox extends StatelessWidget {
  final String text;
  final String numbers;

  textInTheBox({required this.text, required this.numbers});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          numbers,
          style: const TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    );
  }
}

class Div extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 10),
      child: Container(
        height: 50,
        child: const VerticalDivider(
          color: Colors.grey,
          thickness: 1.5,
        ),
      ),
    );
  }
}
