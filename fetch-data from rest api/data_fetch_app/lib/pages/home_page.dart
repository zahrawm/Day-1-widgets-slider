import 'package:data_fetch_app/components/my_drawer.dart';
import 'package:data_fetch_app/components/my_drawer_title.dart';
import 'package:data_fetch_app/pages/settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          MyDrawer(),
          MyDrawerTitle(
            text: "HOME",
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          MyDrawerTitle(
            text: "SETTINGS",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
          MyDrawerTitle(
            text: "LOGOUT",
            icon: Icons.logout,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
