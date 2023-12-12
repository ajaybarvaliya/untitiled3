import 'package:flutter/material.dart';

class CurveTweenDemo extends StatefulWidget {
  const CurveTweenDemo({Key? key}) : super(key: key);
  @override
  State<CurveTweenDemo> createState() => _CurveTweenDemoState();
}

class _CurveTweenDemoState extends State<CurveTweenDemo> {
  Alignment selected = Alignment.bottomRight;
  Curve curve = Curves.bounceIn;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        onEnd: () {
          setState(() {
            curve =
                curve == Curves.bounceIn ? Curves.decelerate : Curves.bounceIn;
            selected = selected == Alignment.bottomRight
                ? Alignment.topLeft
                : Alignment.bottomRight;
          });
        },
        duration: Duration(seconds: 5),
        builder: (context, value, child) {
          return AnimatedAlign(
            curve: curve,
            alignment: selected,
            duration: Duration(seconds: 5),
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
