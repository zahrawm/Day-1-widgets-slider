import 'package:flutter/material.dart';

class MyButon extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyButon({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ));
  }
}
