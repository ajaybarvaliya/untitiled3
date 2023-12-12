import 'package:flutter/material.dart';

class SliverAppBarDemo extends StatefulWidget {
  const SliverAppBarDemo({Key? key}) : super(key: key);

  @override
  State<SliverAppBarDemo> createState() => _SliverAppBarDemoState();
}

class _SliverAppBarDemoState extends State<SliverAppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleTextStyle: TextStyle(fontSize: 30),
            pinned: true,
            expandedHeight: 250,
            toolbarHeight: 20,
            // collapsedHeight: 60,
            backgroundColor: Colors.teal,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Sliver App Bar",
                style: TextStyle(fontSize: 25),
              ),
              background: Image.network(
                "https://images.unsplash.com/photo-1680237659901-29f8d39ff290?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 1000,
                  width: double.infinity,
                  color: Colors.red,
                ),
                Container(
                  height: 1000,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
