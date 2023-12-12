import 'package:flutter/material.dart';

class AnimatedAligndemo extends StatefulWidget {
  const AnimatedAligndemo({Key? key}) : super(key: key);

  @override
  State<AnimatedAligndemo> createState() => _AnimatedAligndemoState();
}

class _AnimatedAligndemoState extends State<AnimatedAligndemo> {
  AlignmentGeometry alignment = Alignment.topRight;
  double height = 200;
  double width = 200;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              alignment = alignment == Alignment.topRight
                  ? Alignment.bottomLeft
                  : Alignment.topRight;
            });
            height = height == 200 ? 100 : 200;
            width = width == 200 ? 100 : 200;
            color = color == Colors.red
                ? Colors.green
                : color == Colors.green
                    ? Colors.blue
                    : Colors.red;
          },
          child: Icon(Icons.add)),
      body: AnimatedAlign(
        alignment: alignment,
        duration: Duration(seconds: 2),
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          child: Container(
            height: height,
            width: width,
            color: color,
          ),
        ),
      ),
    );
  }
}
