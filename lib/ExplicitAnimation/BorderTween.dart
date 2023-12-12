import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BorderTweenDemo extends StatefulWidget {
  const BorderTweenDemo({Key? key}) : super(key: key);

  @override
  State<BorderTweenDemo> createState() => _BorderTweenDemoState();
}

class _BorderTweenDemoState extends State<BorderTweenDemo> {
  Border border = Border.all(color: Colors.red, width: 3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          onEnd: () {
            setState(() {});
            border = border == Border.all(color: Colors.yellow, width: 10)
                ? Border.all(color: Colors.red, width: 10)
                : Border.all(color: Colors.yellow, width: 10);
          },
          tween: BorderTween(
              begin: Border.all(color: Colors.yellow, width: 10), end: border),
          duration: Duration(seconds: 2),
          builder: (BuildContext context, Object? value, Widget? child) {
            return Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: border == Border.all(color: Colors.yellow, width: 10)
                      ? Border.all(color: Colors.red, width: 10)
                      : Border.all(color: Colors.yellow, width: 10)),
            );
          },
        ),
      ),
    );
  }
}
