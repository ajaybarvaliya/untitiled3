import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  double height = 200;
  double width = 200;
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          height = height == 200 ? 100 : 200;
          width = width == 200 ? 100 : 200;
          color = color == Colors.red
              ? Colors.green
              : color == Colors.green
                  ? Colors.blue
                  : Colors.red;
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              child: Container(
                height: height,
                width: width,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///animated align
///animated opacity
///animated padding
///animated rotation
