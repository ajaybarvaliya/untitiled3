import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BorderRadiusDemo extends StatefulWidget {
  const BorderRadiusDemo({Key? key}) : super(key: key);

  @override
  State<BorderRadiusDemo> createState() => _BorderRadiusDemoState();
}

class _BorderRadiusDemoState extends State<BorderRadiusDemo> {
  BorderRadius br = BorderRadius.all(Radius.circular(20));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        onEnd: () {
          setState(() {});
          br = br == BorderRadius.all(Radius.circular(70))
              ? BorderRadius.all(Radius.circular(20))
              : BorderRadius.all(Radius.circular(70));
        },
        tween: BorderRadiusTween(
            end: br, begin: BorderRadius.all(Radius.circular(70))),
        duration: Duration(seconds: 3),
        builder: (context, value, child) {
          return Center(
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: br == BorderRadius.all(Radius.circular(70))
                      ? BorderRadius.all(Radius.circular(20))
                      : BorderRadius.all(Radius.circular(70))),
            ),
          );
        },
      ),
    );
  }
}
