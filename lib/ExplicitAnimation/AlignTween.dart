import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlignTweenDemo extends StatefulWidget {
  const AlignTweenDemo({Key? key}) : super(key: key);

  @override
  State<AlignTweenDemo> createState() => _AlignTweenDemoState();
}

class _AlignTweenDemoState extends State<AlignTweenDemo> {
  Alignment selected = Alignment.bottomRight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        onEnd: () {
          setState(() {
            selected = selected == Alignment.bottomRight
                ? Alignment.topLeft
                : Alignment.bottomRight;
          });
        },
        duration: Duration(seconds: 3),
        builder: (context, value, child) {
          return AnimatedAlign(
            alignment: selected,
            duration: Duration(seconds: 2),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          );
        },
        curve: Curves.bounceIn,
        tween: AlignmentTween(begin: Alignment.topLeft, end: selected),
      ),
    );
  }
}
