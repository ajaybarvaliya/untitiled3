import 'package:flutter/material.dart';

class BottomTabBarDemo extends StatefulWidget {
  const BottomTabBarDemo({Key? key}) : super(key: key);

  @override
  State<BottomTabBarDemo> createState() => _BottomTabBarDemoState();
}

class _BottomTabBarDemoState extends State<BottomTabBarDemo>
    with TickerProviderStateMixin {
  TabController? tabController;

  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        child: TabBar(
          labelColor: Colors.black,
          controller: tabController,
          tabs: [
            Text("Chat"),
            Text("Status"),
            Text("Calls"),
          ],
        ),
      ),
    );
  }
}
