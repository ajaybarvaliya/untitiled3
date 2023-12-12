import 'package:flutter/material.dart';

class DismissibleDemo extends StatefulWidget {
  const DismissibleDemo({Key? key}) : super(key: key);

  @override
  State<DismissibleDemo> createState() => _DismissibleDemoState();
}

class _DismissibleDemoState extends State<DismissibleDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Dismissible(
                  background: Icon(Icons.delete),
                  secondaryBackground: Icon(Icons.share),
                  key: UniqueKey(),
                  child: Container(
                    height: 30,
                    width: double.infinity,
                    color: Colors.blue.withOpacity(0.2),
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text("Index $index"),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
