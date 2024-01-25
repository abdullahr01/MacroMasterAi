import 'package:flutter/material.dart';
import 'package:macromasterai/Constants/Constants.dart';
import 'package:macromasterai/Constants/CustomSlider.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  double _sliderValue = 0.0;
  double _sliderValue2 = 0.0;
  double _sliderValue3 = 0.0;

  @override
  Widget build(BuildContext context) {
    double totalCalories = _sliderValue + _sliderValue2 + _sliderValue3;
    return Scaffold(
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
                      text: 'Calorie Control',
                      textSize: 18,
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
                        Icons.more_vert_outlined,
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
                height: 15,
              ),
              SizedBox(
                height: 220,
                width: 220,
                child: Image.asset(
                  'images/ham-leaf-vegetable-salad-cucumber-cucumber-salad-with-ham-bf6ff775745b753bae564c0a9f96a118 1.png',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 140),
                child: PoppinsTextStyle(
                    text: 'Cheese & avocado salad',
                    textSize: 17,
                    textColor: Colors.black,
                    isBold: true),
              ),
              const SizedBox(
                height: 1,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 149),
                child: PoppinsTextStyle(
                    text: 'High protein main meal',
                    textSize: 17,
                    textColor: Colors.grey,
                    isBold: false),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    height: 430,
                    width: 355,
                    decoration: BoxDecoration(
                        // color: const Color(0xffffffff),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 200, top: 13),
                          child: PoppinsTextStyle(
                              text: 'For 1 portion',
                              textSize: 17,
                              textColor: Colors.black,
                              isBold: true),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              right: 30, top: 15, left: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PoppinsTextStyle(
                                  text: 'Protein',
                                  textSize: 16,
                                  textColor: Colors.black,
                                  isBold: true),
                              PoppinsTextStyle(
                                  text: 'gram',
                                  textSize: 15,
                                  textColor: Colors.grey,
                                  isBold: false),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.red,
                            inactiveTrackColor: const Color(0xfff2f2f2),
                            trackShape: const RectangularSliderTrackShape(),
                            trackHeight: 15.0,
                            thumbColor: Colors.red,
                            thumbShape: CustomSliderThumbRect(
                              thumbRadius: 70.0,
                              thumbHeight: 50.0,
                              value: _sliderValue,
                            ),
                            overlayColor: Colors.green.withOpacity(0.3),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 20.0),
                          ),
                          child: Slider(
                            value: _sliderValue,
                            onChanged: (value) {
                              setState(() {
                                _sliderValue = value;
                              });
                            },
                            min: 0,
                            max: 50,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              right: 30, top: 15, left: 23),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PoppinsTextStyle(
                                  text: 'Carbs',
                                  textSize: 16,
                                  textColor: Colors.black,
                                  isBold: true),
                              PoppinsTextStyle(
                                  text: 'gram',
                                  textSize: 15,
                                  textColor: Colors.grey,
                                  isBold: false),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: const Color(0xfffe934e),
                            inactiveTrackColor: const Color(0xfff2f2f2),
                            trackShape: const RectangularSliderTrackShape(),
                            trackHeight: 15.0,
                            thumbColor: const Color(0xfffe934e),
                            thumbShape: CustomSliderThumbRect(
                              thumbRadius: 70.0,
                              thumbHeight: 50.0,
                              value: _sliderValue2,
                            ),
                            overlayColor: Colors.green.withOpacity(0.3),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 20.0),
                          ),
                          child: Slider(
                            value: _sliderValue2,
                            onChanged: (value) {
                              setState(() {
                                _sliderValue2 = value;
                              });
                            },
                            min: 0,
                            max: 50,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              right: 30, top: 15, left: 28),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PoppinsTextStyle(
                                  text: 'Fat',
                                  textSize: 16,
                                  textColor: Colors.black,
                                  isBold: true),
                              PoppinsTextStyle(
                                  text: 'gram',
                                  textSize: 15,
                                  textColor: Colors.grey,
                                  isBold: false),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: const Color(0xff7264e4),
                            inactiveTrackColor: const Color(0xfff2f2f2),
                            trackShape: const RectangularSliderTrackShape(),
                            trackHeight: 15.0,
                            thumbColor: const Color(0xff7264e4),
                            thumbShape: CustomSliderThumbRect(
                              thumbRadius: 70.0,
                              thumbHeight: 50.0,
                              value: _sliderValue3,
                            ),
                            overlayColor: Colors.green.withOpacity(0.3),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 20.0),
                          ),
                          child: Slider(
                            value: _sliderValue3,
                            onChanged: (value) {
                              setState(() {
                                _sliderValue3 = value;
                              });
                            },
                            min: 0,
                            max: 50,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: 50,
                            width: 270,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color(0xfff2f2f2)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: PoppinsTextStyle(
                                        text: 'Total',
                                        textSize: 15,
                                        textColor: Colors.black,
                                        isBold: true),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: PoppinsTextStyle(
                                      text:
                                          "${totalCalories.toStringAsFixed(1)} calories",
                                      textColor: Colors.grey,
                                      textSize: 14,
                                      isBold: false,
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 240, top: 70),
                    child: Container(
                      height: 280,
                      width: 7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffeb0000)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
