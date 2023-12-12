import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class List_SeparateDemo extends StatefulWidget {
  const List_SeparateDemo({Key? key}) : super(key: key);

  @override
  State<List_SeparateDemo> createState() => _List_SeparateDemoState();
}

class _List_SeparateDemoState extends State<List_SeparateDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.red,
                      margin: EdgeInsets.symmetric(vertical: 10),
                    ),
                    DottedLine(
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      lineThickness: 1.0,
                      dashLength: 4.0,
                      dashRadius: 0.0,
                      dashGapLength: 4.0,
                      dashGapRadius: 0.0,
                    )
                  ],
                );
              },
              itemCount: 21,
              separatorBuilder: (BuildContext context, int index) {
                return index == 1
                    ? Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.green,
                            margin: EdgeInsets.symmetric(vertical: 10),
                          ),
                          DottedLine(
                            direction: Axis.horizontal,
                            lineLength: double.infinity,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                            dashGapRadius: 0.0,
                          ),
                        ],
                      )
                    : SizedBox();
              },
            ),
          )
        ],
      ),
    );
  }
}
