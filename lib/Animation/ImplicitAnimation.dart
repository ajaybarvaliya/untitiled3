import 'package:flutter/material.dart';

class ImplicitAnimationDemo extends StatefulWidget {
  const ImplicitAnimationDemo({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimationDemo> createState() => _ImplicitAnimationDemoState();
}

class _ImplicitAnimationDemoState extends State<ImplicitAnimationDemo>
    with TickerProviderStateMixin {
  AnimationController? controller;

  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          if (controller!.isAnimating) {
            controller!.stop();
          } else if (controller!.isCompleted) {
            controller!.reverse();
          } else {
            controller!.forward();
          }
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedBuilder(
              animation: controller!,
              builder: (BuildContext context, Widget? child) {
                return Container(
                  height: controller!.value * 200,
                  width: controller!.value * 200,
                  color: Colors.red,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
