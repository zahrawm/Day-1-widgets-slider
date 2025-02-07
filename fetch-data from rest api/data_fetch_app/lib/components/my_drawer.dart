import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.lock_open_rounded,
          size: 80,
          color: Theme.of(context).colorScheme.tertiary,
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Divider(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
