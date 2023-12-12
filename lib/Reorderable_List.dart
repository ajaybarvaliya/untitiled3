import 'package:flutter/material.dart';

class ReoderableListDemo extends StatefulWidget {
  const ReoderableListDemo({Key? key}) : super(key: key);

  @override
  State<ReoderableListDemo> createState() => _ReoderableListDemoState();
}

class _ReoderableListDemoState extends State<ReoderableListDemo> {
  List name = [
    "KP",
    "Raaj",
    "Kishan",
    "Ketul",
    "Het",
    "Ajay",
    "Bhagat",
    "Bhautik",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReorderableListView(
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (newIndex > oldIndex) {
                newIndex -= 1;
              }
            });
            var olditem = name.removeAt(oldIndex);
            name.insert(newIndex, olditem);
          },
          children: List.generate(
            name.length,
            (index) => Container(
              key: UniqueKey(),
              height: 30,
              width: double.infinity,
              color: Colors.blue.withOpacity(0.2),
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text("${name[index]}"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
