import 'package:flutter/material.dart';

class SearchDemo extends StatefulWidget {
  const SearchDemo({Key? key}) : super(key: key);

  @override
  State<SearchDemo> createState() => _SearchDemoState();
}

class _SearchDemoState extends State<SearchDemo> {
  TextEditingController namecontroller = TextEditingController();
  List name = [
    "KP",
    "Raaj",
    "Kishan",
    "Kishna",
    "Ketul",
    "Ketan",
    "Het",
    "Hetal",
    "Ajay",
    "Bhagat",
    "Bhautik",
  ];

  List addlist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  addlist.clear();
                });
                name.forEach((element) {
                  if (element.contains(value)) {
                    addlist.add(element);
                  }
                });
              },
              controller: namecontroller,
              decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: addlist.length,
              itemBuilder: (context, index) {
                return Text("${addlist[index]}");
              },
            ),
          ],
        ),
      ),
    );
  }
}
