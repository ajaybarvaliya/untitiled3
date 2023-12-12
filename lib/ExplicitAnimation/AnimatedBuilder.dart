import 'package:flutter/material.dart';

class ExplicitAnimationDemo extends StatefulWidget {
  const ExplicitAnimationDemo({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationDemo> createState() => _ExplicitAnimationDemoState();
}

class _ExplicitAnimationDemoState extends State<ExplicitAnimationDemo> {
  Color color = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          onEnd: () {
            setState(() {});
            if (color == Colors.green) {
              color = Colors.orange;
            } else if (color == Colors.orange) {
              color = Colors.black;
            } else if (color == Colors.black) {
              color = Colors.teal;
            } else if (color == Colors.teal) {
              color = Colors.green;
            }
          },
          builder: (context, value, child) {
            return Container(
              height: 200,
              width: 200,
              color: color,
            );
          },
          duration: Duration(milliseconds: 100),
          tween: ColorTween(
            begin: Colors.green,
            end: color,
          ),
        ),
      ),
    );
  }
}

///Align tween
///borderradius tween
///border tween
///decoration tweeen
///textstyle tween
///int tween
///curve tween
