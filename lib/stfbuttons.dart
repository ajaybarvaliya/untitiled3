import 'package:flutter/material.dart';

class StateFullButtonDemo extends StatefulWidget {
  const StateFullButtonDemo({Key? key}) : super(key: key);

  @override
  State<StateFullButtonDemo> createState() => _StateFullButtonDemoState();
}

class _StateFullButtonDemoState extends State<StateFullButtonDemo> {
  double slidervalue = 0;
  bool isswitch = false;
  bool ischeck = false;
  int select = 0;
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
          Switch(
            value: isswitch,
            onChanged: (bool value) {
              setState(() {});
              isswitch = !isswitch;
            },
          ),
          Checkbox(
            value: ischeck,
            // shape:
            //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onChanged: (value) {
              setState(() {});
              ischeck = !ischeck;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Male"),
              Radio(
                value: 1,
                groupValue: select,
                onChanged: (int? value) {
                  setState(() {});
                  select = value!;
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Female"),
              Radio(
                value: 2,
                groupValue: select,
                onChanged: (int? value) {
                  setState(() {});
                  select = value!;
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
