import 'package:flutter/material.dart';

class ListWheelScrollViewDemo extends StatefulWidget {
  const ListWheelScrollViewDemo({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewDemo> createState() =>
      _ListWheelScrollViewDemoState();
}

class _ListWheelScrollViewDemoState extends State<ListWheelScrollViewDemo> {
  List name = [
    "KP",
    "Raaj",
    "Kishan",
    "Ketul",
    "Het",
    "Ajay",
    "Bhagat",
    "Bhautik",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListWheelScrollView(
      children: List.generate(
        name.length,
        (index) => Text("${name[index]}"),
      ),
      itemExtent: 50,
      diameterRatio: 0.5,
      // magnification: 0.01,
      // offAxisFraction: 1,
      perspective: 0.01,
      overAndUnderCenterOpacity: 0.2,
    ));
  }
}
