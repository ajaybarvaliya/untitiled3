import 'package:flutter/material.dart';

class PageViewBuilderDemo extends StatefulWidget {
  const PageViewBuilderDemo({Key? key}) : super(key: key);

  @override
  State<PageViewBuilderDemo> createState() => _PageViewBuilderDemoState();
}

class _PageViewBuilderDemoState extends State<PageViewBuilderDemo> {
  List color = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
  ];

  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                PageView.builder(
                  onPageChanged: (value) {
                    setState(() {});
                    select = value;
                  },
                  itemCount: color.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 300,
                      width: 360,
                      color: color[index],
                    );
                  },
                ),
                Positioned(
                  bottom: 10,
                  right: 0,
                  left: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        height: 8,
                        width: 8,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                select == index ? Colors.orange : Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
