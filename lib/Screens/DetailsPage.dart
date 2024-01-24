import 'package:flutter/material.dart';

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
                  const Text(
                    "Calorie Control",
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
              Container(
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
                child: Text(
                  "Cheese & avocado salad ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 149),
                child: Text(
                  "High protein main meal ",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
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
                          child: Text(
                            "For 1 portion",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 19),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 30, top: 15, left: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Protein",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Text(
                                "gram",
                                style: TextStyle(
                                    color: Colors.grey,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
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
                            overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 20.0),
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
                          padding: EdgeInsets.only(right: 30, top: 15, left: 23),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Carbs",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Text(
                                "gram",
                                style: TextStyle(
                                    color: Colors.grey,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
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
                            overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 20.0),
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
                          padding: EdgeInsets.only(right: 30, top: 15, left: 28),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Fat",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Text(
                                "gram",
                                style: TextStyle(
                                    color: Colors.grey,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
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
                            overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 20.0),
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
                                color: const Color(0xfff2f2f2)
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Total ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text(
                                      "${totalCalories.toStringAsFixed(1)} calories",
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          // fontWeight: FontWeight.bold,
                                          fontSize: 15
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                        ),
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
                          color: const Color(0xffeb0000)
                      ),
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

class CustomSliderThumbRect extends SliderComponentShape {
  final double thumbRadius;
  final double thumbHeight;
  final double value;

  CustomSliderThumbRect({
    required this.thumbRadius,
    required this.thumbHeight,
    required this.value,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(thumbRadius, thumbHeight);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        Animation<double>? activationAnimation,
        Animation<double>? enableAnimation,
        bool? isDiscrete,
        TextPainter? labelPainter,
        RenderBox? parentBox,
        SliderThemeData? sliderTheme,
        TextDirection? textDirection,
        double? textScaleFactor,
        Size? sizeWithOverflow,
        double? value,
      }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..color = sliderTheme?.thumbColor ?? Colors.green
      ..style = PaintingStyle.fill;

    final centerRect = RRect.fromRectAndRadius(
      Rect.fromCenter(center: center, width: thumbRadius, height: thumbHeight),
      Radius.circular(thumbRadius * 0.2),
    );

    // Draw a rectangle instead of an oval
    canvas.drawRRect(centerRect, paint);

    // Display the value on the center of the thumb
    if (labelPainter != null) {
      labelPainter.text = TextSpan(
        text: this.value.toStringAsFixed(1),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          // fontWeight: FontWeight.bold,
        ),
      );
      labelPainter.textDirection = textDirection ?? TextDirection.ltr;
      labelPainter.layout();

      final textPainterOffset = Offset(
        center.dx - labelPainter.width / 2.0,
        center.dy - labelPainter.height / 2.0,
      );
      labelPainter.paint(canvas, textPainterOffset);
    }
  }
}
