import 'package:data_fetch_app/components/currrent_location.dart';
import 'package:data_fetch_app/components/description_box.dart';
import 'package:data_fetch_app/components/silver_app_bar.dart';
import 'package:data_fetch_app/components/tap.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.initState();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySilverAppBar(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      )
                    ],
                  ),
                  title: Text('Silver Dinner'),
                )
              ],
          body: Column(
            children: [
              CurrrentLocation(),
              DescriptionBox(),
              MyTab(tabcontroller: _tabController),
            ],
          )),
    );
  }
}
