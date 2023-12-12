import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({Key? key}) : super(key: key);

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double slidervalue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 5,
              activeTrackColor: Colors.green,
              inactiveTrackColor: Colors.grey,
              thumbColor: Colors.white,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
              overlayColor: Colors.blue.shade100,
              activeTickMarkColor: Colors.white,

              // valueIndicatorShape: SliderComponentShape.noThumb,
              valueIndicatorTextStyle: TextStyle(color: Colors.black),
              valueIndicatorColor: Colors.transparent,
            ),
            child: Slider.adaptive(
              min: 0,
              max: 100,
              divisions: 5,
              label: "\€${slidervalue.toStringAsFixed(2)}",
              value: slidervalue,
              onChanged: (value) {
                setState(() {});
                slidervalue = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
