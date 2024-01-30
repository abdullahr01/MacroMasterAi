import 'package:flutter/material.dart';
import 'package:macromasterai/Constants/Constants.dart';
import 'package:macromasterai/Constants/CustomSlider.dart';
import 'package:macromasterai/Constants/utils/dimensions.dart';

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
    initMediaQuerySize(context);
    double totalCalories = _sliderValue + _sliderValue2 + _sliderValue3;
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
                height: widgetHeight(270),
                width: widgetWidth(270),
                child: Image.asset(
                  'images/ham-leaf-vegetable-salad-cucumber-cucumber-salad-with-ham-bf6ff775745b753bae564c0a9f96a118 1.png',
                ),
              ),
              SizedBox(
                height: widgetHeight(9),
              ),
              Padding(
                padding: EdgeInsets.only(right: widgetWidth(150)),
                child: const PoppinsTextStyle(
                    text: 'Cheese & avocado salad',
                    textSize: 17,
                    textColor: Colors.black,
                    isBold: true),
              ),
              SizedBox(
                height: widgetHeight(1),
              ),
              Padding(
                padding: EdgeInsets.only(right: widgetWidth(165)),
                child: const PoppinsTextStyle(
                    text: 'High protein main meal',
                    textSize: 17,
                    textColor: Colors.grey,
                    isBold: false),
              ),
              SizedBox(
                height: widgetHeight(29),
              ),
              Stack(
                children: [
                  Container(
                    height: widgetHeight(650),
                    width: widgetWidth(386),
                    decoration: BoxDecoration(
                        // color: const Color(0xffffffff),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: widgetWidth(225), top: widgetHeight(20)),
                          child: const PoppinsTextStyle(
                              text: 'For 1 portion',
                              textSize: 17,
                              textColor: Colors.black,
                              isBold: true),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: widgetWidth(10), top: widgetHeight(19), left: widgetWidth(25)),
                          child: const Row(
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
                        SizedBox(
                          height: widgetHeight(20),
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
                        Padding(
                          padding: EdgeInsets.only(
                              right: widgetWidth(10), top: widgetHeight(19), left: widgetWidth(25)),
                          child: const Row(
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
                        SizedBox(
                          height: widgetHeight(20),
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
                        Padding(
                          padding: EdgeInsets.only(
                              right: widgetWidth(10), top: widgetHeight(19), left: widgetWidth(25)),
                          child: const Row(
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
                        SizedBox(
                          height: widgetHeight(20),
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
                        SizedBox(
                          height: widgetHeight(41),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: widgetHeight(70),
                            width: widgetWidth(358),
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
                    padding: EdgeInsets.only(left: widgetWidth(260), top: widgetHeight(100)),
                    child: Container(
                      height: widgetHeight(410),
                      width: widgetWidth(8),
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
