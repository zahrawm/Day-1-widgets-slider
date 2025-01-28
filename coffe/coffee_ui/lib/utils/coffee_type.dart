import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffetype;
  final bool isSelected;
  const CoffeeType(
      {Key? Key, required this.coffetype, required this.isSelected})
      : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Text(
        coffetype,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.orange : Colors.white),
      ),
    );
  }
}
