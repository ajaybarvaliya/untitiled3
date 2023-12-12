import 'package:flutter/material.dart';

class DragableScollableSheetDemo extends StatefulWidget {
  const DragableScollableSheetDemo({Key? key}) : super(key: key);

  @override
  State<DragableScollableSheetDemo> createState() =>
      _DragableScollableSheetDemoState();
}

class _DragableScollableSheetDemoState
    extends State<DragableScollableSheetDemo> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1681637524413-0f3be0f3ac73?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
          ),
          DraggableScrollableSheet(
            minChildSize: 0.1,
            maxChildSize: 0.8,
            snap: true,
            snapSizes: [0.3, 0.6],
            builder: (context, scrollController) {
              return ListView.builder(
                controller: scrollController,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 0),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    height: 30,
                    width: double.infinity,
                    color: Colors.blue.withOpacity(0.2),
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text("Index ${index}"),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
