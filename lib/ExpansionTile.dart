import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '';

class ExpansionTileDemo extends StatefulWidget {
  const ExpansionTileDemo({Key? key}) : super(key: key);

  @override
  State<ExpansionTileDemo> createState() => _ExpansionTileDemoState();
}

class _ExpansionTileDemoState extends State<ExpansionTileDemo> {
  List name = [
    "Raj",
    "Ajay",
    "Bhautik",
    "Bhagat",
    "Ketul",
    "Kishan",
    "Krushang",
    "Het",
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: width * 0.8,
            height: height * 0.8,
            color: Colors.blue.shade200,
          ),
          Container(
            width: 10.w,
            height: 80.h,
            color: Colors.green.shade200,
          ),
          // ExpansionTile(
          //   expandedAlignment: Alignment.centerLeft,
          //   expandedCrossAxisAlignment: CrossAxisAlignment.start,
          //   childrenPadding: EdgeInsets.symmetric(horizontal: 20),
          //   title: Text("hello"),
          //   children: List.generate(
          //     name.length,
          //     (index) => Text(
          //       name[index],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
