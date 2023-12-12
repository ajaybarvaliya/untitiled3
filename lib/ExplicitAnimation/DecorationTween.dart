import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DecorationTweenDemo extends StatefulWidget {
  const DecorationTweenDemo({Key? key}) : super(key: key);

  @override
  State<DecorationTweenDemo> createState() => _DecorationTweenDemoState();
}

class _DecorationTweenDemoState extends State<DecorationTweenDemo> {
  BoxDecoration dt = BoxDecoration(
    color: Colors.red,
    border: Border.all(
      color: Colors.black,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(60.0),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        onEnd: () {
          setState(() {});
          dt = dt ==
                  BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(60.0),
                  )
              ? BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.red,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(100),
                )
              : BoxDecoration(
                  color: Colors.red,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(60.0),
                );
        },
        duration: Duration(seconds: 1),
        builder: (BuildContext context, Object? value, Widget? child) {
          return Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: dt,
            ),
          );
        },
        tween: DecorationTween(
          end: dt,
          begin: BoxDecoration(
            color: Colors.black,
            border: Border.all(style: BorderStyle.none),
            borderRadius: BorderRadius.circular(60.0),
          ),
        ),
      ),
    );
  }
}
