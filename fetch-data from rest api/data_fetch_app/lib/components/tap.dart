import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final TabController tabcontroller;
  const MyTab({super.key, required this.tabcontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(controller: tabcontroller, tabs: [
        Tab(
          child: Icon(Icons.home),
        ),
        Tab(
          child: Icon(Icons.settings),
        ),
        Tab(
          child: Icon(Icons.food_bank),
        )
      ]),
    );
  }
}
